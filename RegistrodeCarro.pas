
Program Pzim ;
type
	valores = record
  compra: array[1..4] of integer;
  venda: array[1..4] of real;
  acessorio: array[1..4] of real;
  nomeAcessorio: array[1..4] of string;
end;

	fichaRegistro = record
	nome : string;
	marca : string;
	modelo : string;
	ano : real;
	valorCompra : real;
	valorVenda : real;
	calc : valores;
end;
const
    MAX = 2;
		
var
	i, j : integer;
	totalcompra, totalvenda, totallucro, totalacessorio, totallucro2 : real;
	carro: array [1..MAX] of fichaRegistro;
			
Begin
  
  for i:= 1 to MAX do
    begin
        write('Nome do Carro................:');
        readln(carro[i].nome);
        write('Marca do Carro...............:');
        readln(carro[i].marca);
        write('Modelo do Carro..............:');
        readln(carro[i].modelo);
        write('Ano do carro.................:');
        readln(carro[i].ano);
        writeln();
        
        	
						
        
        for j:= 1 to 1 do
        begin
            write('Informe o Valor de Compra ', j, ' do Carro ', carro[i].nome, ': ');
       			readln(carro[i].calc.compra[j]);
        		write('Informe o Valor de Venda ', j, ' do Carro ', carro[i].nome, ': ');
        		readln(carro[i].calc.venda[j]);
        		writeln();
        		writeln('------------------------------------------');
        		writeln();
        		writeln('Digite o Nome do Acess�rio? ');
        		writeln('Multimidia - R$2.000');
        		writeln('Aerof�lio - R$1.000');
        		writeln('Far�is de Neblina - R$1.000');
        		writeln('Sem acess�rios - R$0');
        		readln(carro[i].calc.nomeAcessorio[j]);                      
        		writeln();
        		writeln('------------------------------------------');
        		writeln();
        		writeln('Digite o Valor do Acessorio');
        		readln(carro[i].calc.acessorio[j]);
        		
        		
        
      	end;
      clrscr;
    end;
    
    clrscr;
    for i := 1 to 2 do
    begin
        
        for j := 1 to 1 do
        begin
            totalcompra := totalcompra + carro[i].calc.compra[j];
            totalvenda := totalvenda + carro[i].calc.venda[j];
            totallucro := totalvenda - totalcompra ;
            totalacessorio := totalacessorio + carro[i].calc.acessorio[j];
            totallucro2 := totallucro + totalacessorio;
        end;
       
        
        writeln('------------------------------------------');
        writeln('Carro...................:', carro[i].nome);
        writeln('Valor de Venda..........:R$', carro[i].calc.venda[j]:0:3);
        writeln('Valor de Compra.........:R$', carro[i].calc.compra[j]:0:3);
				writeln('Marca...................:', carro[i].marca);
				writeln('Ano do Carro............:', carro[i].ano:0:0);
				writeln('Acess�rio: ',carro[i].calc.nomeAcessorio[j],' de Valor: R$',carro[i].calc.acessorio[j]:0:3);                                                 
        writeln();
        
        
    end;    
        
        writeln('--------------- Relat�rio ---------------');
        writeln();
        writeln('Total Gasto em Compra............:R$', totalcompra:0:3);
        writeln('Total em Vendas..................:R$', totalVenda:0:3);        
        writeln('Total em Acess�rios..............:R$', totalacessorio:0:3);
        writeln('Total em Lucro...................:R$', totallucro:0:3);
        writeln('Total em Lucro + Acess�rios......:R$', totallucro2:0:3);
        writeln();
        writeln('------------------------------------------');
        writeln();
        
End.