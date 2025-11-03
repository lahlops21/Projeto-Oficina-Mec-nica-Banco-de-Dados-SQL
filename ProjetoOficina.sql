
create database Oficina;
use Oficina; 

create table cliente (
id_cliente int primary key auto_increment,
nome varchar(100),
telefone varchar(20),
email varchar(100),
endereco varchar(150)
); 

insert into cliente (nome, telefone, email, endereco) VALUES
('João Silva', '11988887777', 'joao.silva@email.com', 'Rua das Flores, 123'),
('Maria Oliveira', '11999998888', 'maria.oliveira@email.com', 'Av Brasil, 45'),
('Carlos Souza', '11977776666', 'carlos.souza@email.com', 'Rua A, 101'),
('Fernanda Lima', '11966665555', 'fernanda.lima@email.com', 'Rua B, 202'),
('Ricardo Pereira', '11955554444', 'ricardo.pereira@email.com', 'Av Paulista, 300'),
('Patrícia Gomes', '11944443333', 'patricia.gomes@email.com', 'Rua C, 404'),
('Roberto Alves', '11933332222', 'roberto.alves@email.com', 'Av Central, 500'),
('Juliana Martins', '11922221111', 'juliana.martins@email.com', 'Rua D, 606'),
('Lucas Ferreira', '11911110000', 'lucas.ferreira@email.com', 'Rua E, 707'),
('Aline Costa', '11899998888', 'aline.costa@email.com', 'Rua F, 808'),
('Gabriel Santos', '11888887777', 'gabriel.santos@email.com', 'Av Atlântica, 909'),
('Carla Menezes', '11877776666', 'carla.menezes@email.com', 'Rua G, 1010'),
('Thiago Nunes', '11866665555', 'thiago.nunes@email.com', 'Rua H, 1111'),
('Vanessa Rocha', '11855554444', 'vanessa.rocha@email.com', 'Rua I, 1212'),
('Paulo Andrade', '11844443333', 'paulo.andrade@email.com', 'Av Sul, 1313');


create table mecanico (
  id_mecanico int primary key auto_increment,
  nome varchar(100),
  especialidade varchar(50),
  telefone varchar(20)
);

insert into mecanico (nome, especialidade, telefone) VALUES
('Carlos Lima', 'Motor', '11970000001'),
('Ana Paula', 'Elétrica', '11970000002'),
('José Fernandes', 'Suspensão', '11970000003'),
('Rafael Costa', 'Freios', '11970000004'),
('Luiz Henrique', 'Pintura', '11970000005'),
('Marcos Souza', 'Lataria', '11970000006'),
('Diego Santos', 'Injeção', '11970000007'),
('Felipe Alves', 'Ar-condicionado', '11970000008'),
('Claudia Pires', 'Diagnóstico', '11970000009'),
('Bruno Rocha', 'Transmissão', '11970000010'),
('Renato Moraes', 'Motor', '11970000011'),
('Eduardo Reis', 'Suspensão', '11970000012'),
('Luciana Silva', 'Freios', '11970000013'),
('Fábio Mendes', 'Elétrica', '11970000014'),
('Rodrigo Ribeiro', 'Pintura', '11970000015');

create table veiculo(
id_veiculo int primary key auto_increment,
placa char(7) unique, 
marca varchar(50),
modelo varchar(50),
ano int, 
id_cliente int, 
foreign key (id_cliente) references cliente(id_cliente)
);

insert into veiculo (placa, marca, modelo, ano, id_cliente) VALUES
('ABC1234', 'Ford', 'Fiesta', 2018, 1),
('XYZ9876', 'Chevrolet', 'Onix', 2020, 2),
('JHK4321', 'Volkswagen', 'Gol', 2015, 3),
('PLQ7654', 'Toyota', 'Corolla', 2019, 4),
('RTY3456', 'Honda', 'Civic', 2021, 5),
('MNB5678', 'Fiat', 'Argo', 2019, 6),
('QWE1111', 'Renault', 'Kwid', 2022, 7),
('UIO2222', 'Peugeot', '208', 2020, 8),
('ASD3333', 'Ford', 'Ka', 2017, 9),
('ZXC4444', 'Nissan', 'Versa', 2021, 10),
('WER5555', 'Hyundai', 'HB20', 2019, 11),
('RTF6666', 'Chevrolet', 'Prisma', 2016, 12),
('YUI7777', 'Toyota', 'Etios', 2020, 13),
('BNM8888', 'Fiat', 'Cronos', 2021, 14),
('VFR9999', 'Honda', 'HR-V', 2022, 15);

create table servico(
id_servico int primary key auto_increment,
descricao varchar(100),
preco_servico decimal (10,2)
);

insert into servico (descricao, preco_servico) VALUES
('Troca de óleo', 80.00),
('Alinhamento e balanceamento', 120.00),
('Revisão completa', 350.00),
('Troca de pastilhas de freio', 150.00),
('Troca de embreagem', 800.00),
('Pintura de para-choque', 250.00),
('Substituição de correia dentada', 400.00),
('Troca de bateria', 200.00),
('Verificação elétrica', 100.00),
('Troca de amortecedores', 600.00),
('Higienização do ar-condicionado', 180.00),
('Troca de filtro de ar', 90.00),
('Regulagem de motor', 300.00),
('Troca de pneus', 500.00),
('Revisão de suspensão', 450.00);


create table peca (
id_peca int primary key auto_increment,
nome varchar(100),
valor_unitario decimal (10,2), 
estoque int 
);

insert into peca (nome, valor_unitario, estoque) VALUES
('Filtro de óleo', 25.00, 50),
('Óleo 5W30', 40.00, 100),
('Pastilha de freio', 70.00, 40),
('Correia dentada', 90.00, 30),
('Bateria 60Ah', 350.00, 20),
('Amortecedor dianteiro', 250.00, 25),
('Filtro de ar', 30.00, 60),
('Filtro de combustível', 45.00, 40),
('Pneu 175/65 R14', 280.00, 30),
('Parafuso de roda', 5.00, 200),
('Fluido de freio', 20.00, 80),
('Velas de ignição', 60.00, 50),
('Lanterna traseira', 180.00, 15),
('Retrovisor esquerdo', 150.00, 10),
('Sensor de temperatura', 110.00, 25);


create table ordem_Servico (
    id_os int primary key auto_increment,
    data_abertura date,
    data_fechamento date,
    status varchar(20),
    id_veiculo int,
    id_mecanico int,
    foreign key (id_veiculo) references veiculo(id_veiculo),
    foreign key (id_mecanico) references mecanico(id_mecanico)
);

insert into ordem_servico (data_abertura, data_fechamento, status, id_veiculo, id_mecanico) VALUES
('2025-10-01', '2025-10-03', 'Fechada', 1, 1),
('2025-10-02', '2025-10-05', 'Fechada', 2, 2),
('2025-10-03', NULL, 'Aberta', 3, 3),
('2025-10-04', '2025-10-06', 'Fechada', 4, 4),
('2025-10-05', NULL, 'Aberta', 5, 5),
('2025-10-06', '2025-10-08', 'Fechada', 6, 6),
('2025-10-07', '2025-10-09', 'Fechada', 7, 7),
('2025-10-08', NULL, 'Aberta', 8, 8),
('2025-10-09', '2025-10-11', 'Fechada', 9, 9),
('2025-10-10', NULL, 'Aberta', 10, 10),
('2025-10-11', '2025-10-13', 'Fechada', 11, 11),
('2025-10-12', NULL, 'Aberta', 12, 12),
('2025-10-13', '2025-10-15', 'Fechada', 13, 13),
('2025-10-14', NULL, 'Aberta', 14, 14),
('2025-10-15', '2025-10-17', 'Fechada', 15, 15);



create table Item_Servico (
    id_os int,
    id_servico int,
    quantidade int,
    subtotal decimal (10,2),
    primary key (id_os, id_servico),
    foreign key (id_os) references Ordem_Servico(id_os),
    foreign key (id_servico) references Servico(id_servico)
);

insert into item_servico (id_os, id_servico, quantidade, subtotal) VALUES
(1, 1, 1, 80.00),
(1, 4, 1, 150.00),
(2, 2, 1, 120.00),
(3, 3, 1, 350.00),
(4, 1, 1, 80.00),
(5, 7, 1, 400.00),
(6, 5, 1, 800.00),
(7, 9, 1, 100.00),
(8, 8, 1, 200.00),
(9, 10, 1, 600.00),
(10, 11, 1, 180.00),
(11, 12, 1, 90.00),
(12, 13, 1, 300.00),
(13, 14, 1, 500.00),
(14, 15, 1, 450.00);


create table item_Peca (
    id_os int,
    id_peca int,
    quantidade int,
    subtotal decimal (10,2),
    primary key (id_os, id_peca),
    foreign key (id_os) references Ordem_Servico(id_os),
    foreign key (id_peca) references Peca(id_peca)
);

insert into item_peca (id_os, id_peca, quantidade, subtotal) VALUES
(1, 1, 1, 25.00),
(1, 2, 4, 160.00),
(2, 3, 1, 70.00),
(3, 4, 1, 90.00),
(4, 5, 1, 350.00),
(5, 6, 2, 500.00),
(6, 7, 1, 30.00),
(7, 8, 1, 45.00),
(8, 9, 4, 1120.00),
(9, 10, 10, 50.00),
(10, 11, 1, 20.00),
(11, 12, 4, 240.00),
(12, 13, 1, 180.00),
(13, 14, 1, 150.00),
(14, 15, 1, 110.00);


-- Recuperações simples com SELECT

-- Listando todos os clientes cadastrados
select * from cliente;

-- Mostrando nomes e especialidade de cada mecânico
select nome, especialidade from mecanico;

-- Exibir descrição e preço de todos os serviços 
select descricao, preco_servico from servico;

-- FILTROS COM WHERE STATEMENT
-- Mostrando veículos da marca Honda
select * from veiculo 
where marca = 'Honda';

-- Listando ordens de serviço que ainda estão abertas
select id_os, status, data_abertura
from ordem_servico
where status = 'Aberta';

-- Mostrar peças com estoque abaixo de 30 unidades
select nome, estoque
from peca
where estoque < 30;


-- EXPRESSÕES PARA GERAR ATRIBUTOS DERIVADOS
-- Calculando a idade dos veículos 

select modelo, marca, (2025 - ano) as idade_veiculo
from veiculo;

-- Calculando o valor total gasto em cada item de serviço 
select id_os, id_servico, quantidade, subtotal, 
	(quantidade * subtotal) as valor_total
from item_servico;

-- ORDENAÇÕES COM ORDER BY
-- Listando clientes em ordem alfabética
select nome, telefone
from cliente
order by nome asc;

-- Mostrando ordens de serviço mais recentes primeiro
select id_os, data_abertura, status
from ordem_servico
order by data_abertura desc;

-- Listando peças em ordem crescente de valor
select nome, valor_unitario
from peca
order by valor_unitario asc;

-- CONDIÇÕES DE FILTROS AOS GRUPOS - HAVING STATEMENT

-- Quantidade de ordens por mecânico 
select id_mecanico, count(*) as total_ordem_servico
from ordem_servico
group by id_mecanico;

-- Mostrando mecânicos que fizeram mais de 1 serviço

select id_mecanico, count(*) as total_ordem_serviço
from ordem_servico
group by id_mecanico
having count(*) > 1;

-- Exibindo clientes com mais de 1 veículo cadastrado
select id_cliente, COUNT(*) as total_veiculos
from veiculo
group by id_cliente
having COUNT(*) > 1;

-- JUNÇÕES ENTRE TABELAS
-- Mostrando cada OS com nome do cliente, modelo do veículo e status
select os.id_os, c.nome as cliente, v.modelo, os.status
from ordem_servico os
join veiculo v on os.id_veiculo = v.id_veiculo
join cliente c on v.id_cliente = c.id_cliente;

-- Exibindo ordens com o nome do mecânico responsável
select os.id_os, os.status, m.nome as mecanico, m.especialidade
from ordem_servico os
join mecanico m on os.id_mecanico = m.id_mecanico;

-- Mostrando peças utilizadas em cada OS com o nome da peça e o subtotal
select os.id_os, p.nome as peca, ip.quantidade, ip.subtotal
from item_peca ip
join ordem_servico os on ip.id_os = os.id_os
join peca p on ip.id_peca = p.id_peca;

-- Mostrando serviços realizados em cada OS com seus valores
select os.id_os, s.descricao, s.preco_servico, iser.quantidade, iser.subtotal
from item_servico iser
join servico s on iser.id_servico = s.id_servico
join ordem_servico os on iser.id_os = os.id_os;

-- Calculando o valor total por OS
select os.id_os,
       c.nome as cliente,
       SUM(distinct iser.subtotal) + SUM(distinct ip.subtotal) as total_os
from ordem_servico os
join veiculo v on os.id_veiculo = v.id_veiculo
join cliente c on v.id_cliente = c.id_cliente
left join item_servico iser on os.id_os = iser.id_os
left join item_peca ip on os.id_os = ip.id_os
group by os.id_os, c.nome;






