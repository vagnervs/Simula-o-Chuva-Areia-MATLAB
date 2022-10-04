clear
% Matriz de Condi��o
C(:,:,1) = [1 0;0 0];
C(:,:,2) = [0 1;0 0];
C(:,:,3) = [1 0;1 0];
C(:,:,4) = [1 0;0 1];
C(:,:,5) = [1 1;0 0];
C(:,:,6) = [0 1;1 0];
C(:,:,7) = [0 1;0 1];
C(:,:,8) = [1 1;1 0];
C(:,:,9) = [1 1;0 1];
 
% Matriz de Resposta
R(:,:,1) = [0 0;1 0];
R(:,:,2) = [0 0;0 1];
R(:,:,3) = [0 0;1 1];
R(:,:,4) = [0 0;1 1];
R(:,:,5) = [0 0;1 1];
R(:,:,6) = [0 0;1 1];
R(:,:,7) = [0 0;1 1];
R(:,:,8) = [1 0;1 1];
R(:,:,9) = [0 1;1 1];

cond  = 9;              % Numero de Condi��es
 
N = 99;                 % Fator da Matriz (tamanho da matriz)

A = zeros(N);           % Matriz principal (de dimens�o N x N)

A(1,(N-1)/2) = 1;        
A(1,(N+1)/2) = 1;       % coloca��o de �1�    
A(1,(N+3)/2) = 1;          
 
for t=1:100              % la�o repeti��o 
                          

for l = 1:N-1           % la�o de leitura das linhas
for k = 1:N-1           % la�o de leitura das colunas


b(:,:,k) = [A(l,k) A(l,k+1); A(l+1,k) A(l+1,k+1)];% leitura         
                                            

A(1,(N-1)/2) = 1;        
A(1,(N+1)/2) = 1;       % coloca��o de �1�    
A(1,(N+3)/2) = 1;          

 
for j = 1:cond          % controle de leitura de condi��es e    
                           

if b(:,:,k) == C(:,:,j) % la�o de leitura e mudan�a de estado                                  
                           
A(l,k) = R(1,1,j);
A(l,k+1) = R(1,2,j);
A(l+1,k) = R(2,1,j);
A(l+1,k+1) = R(2,2,j);
 
end
end
end
end
end
figure;              % Forma��o da imagem ap�s 100 repeti��es                               
                       
axis([1 9 1 9]);
hold;
for L=1:9
   for K=1:9
      if A(L,K)==1
         plot(K,L,'*')
      end
    end
end
 axis ij              % Invers�o do eixo �y� na figura                         
                        

for t=1:50              % la�o repeti��o. Indica quantas 
                          

for l = 1:N-1           % la�o de leitura das linhas
for k = 1:N-1           % la�o de leitura das colunas


b(:,:,k) = [A(l,k) A(l,k+1); A(l+1,k) A(l+1,k+1)];% leitura         
                                          

A(1,(N-1)/2) = 1;        
A(1,(N+1)/2) = 1;       % coloca��o de �1�     
A(1,(N+3)/2) = 1;          

 
for j = 1:cond          % controle de leitura de condi��es    
                       
    
if b(:,:,k) == C(:,:,j) % la�o de leitura e mudan�a                                   
                           
A(l,k) = R(1,1,j);
A(l,k+1) = R(1,2,j);
A(l+1,k) = R(2,1,j);
A(l+1,k+1) = R(2,2,j);
 
end
end
end
end
end
figure;              % Forma��o da imagem 150 repeti��es                              
                     
axis([1 9 1 9]);
hold;
for L=1:9
   for K=1:9
      if A(L,K)==1
         plot(K,L,'*')
      end
    end
end
 axis ij              % Invers�o do eixo �y� na figura                         
                    
for t=1:50              % la�o repeti��o. 
                                        

for l = 1:N-1           % la�o de leitura das linhas
for k = 1:N-1           % la�o de leitura das colunas


b(:,:,k) = [A(l,k) A(l,k+1); A(l+1,k) A(l+1,k+1)];% leitura         
                                          
A(1,(N-1)/2) = 1;        
A(1,(N+1)/2) = 1;       % coloca��o de �1�     
A(1,(N+3)/2) = 1;          

 
for j = 1:cond          % controle de leitura de condi��es   
                          

if b(:,:,k) == C(:,:,j) % la�o de leitura e mudan�a de matriz                                  
                           
A(l,k) = R(1,1,j);
A(l,k+1) = R(1,2,j);
A(l+1,k) = R(2,1,j);
A(l+1,k+1) = R(2,2,j);
 
end
end
end
end
end
figure;              % Forma��o da imagem da matriz        
                      
axis([1 9 1 9]);
hold;
for L=1:9
   for K=1:9
      if A(L,K)==1
         plot(K,L,'*')
      end
    end
end
 axis ij              % Invers�o do eixo �y� na figura da                         
