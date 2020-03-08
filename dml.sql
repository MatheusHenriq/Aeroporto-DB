-- DML - DATA MANIPULATION LANGUAGE, aqui temos comandos como: SELECT,INSERT,DELETE,UPDATE,MERGE, CALL, LOOK TABLE, JOIN , LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN
-- POSTGRESQL

INSERT INTO passageiros(nome) VALUES('Julia Almeida') ON CONFLICT(nome) DO NOTHING;
INSERT INTO passageiros(nome) VALUES('Erick Cavalcante') ON CONFLICT(nome) DO NOTHING;
INSERT INTO passageiros(nome) VALUES('Tiago Martins') ON CONFLICT(nome) DO NOTHING;
INSERT INTO passageiros(nome) VALUES('Marisa Souza') ON CONFLICT(nome) DO NOTHING;
INSERT INTO passageiros(nome) VALUES('Shopia Correia') ON CONFLICT(nome) DO NOTHING;

INSERT INTO aeronave(modelo_aeronave) VALUES('Boeing 747') ON CONFLICT(modelo_aeronave) DO NOTHING;
INSERT INTO aeronave(modelo_aeronave) VALUES('ATR 42-500') ON CONFLICT(modelo_aeronave) DO NOTHING;
INSERT INTO aeronave(modelo_aeronave) VALUES('Embraer 190') ON CONFLICT(modelo_aeronave) DO NOTHING;
INSERT INTO aeronave(modelo_aeronave) VALUES('Airbus 320') ON CONFLICT(modelo_aeronave) DO NOTHING;
INSERT INTO aeronave(modelo_aeronave) VALUES('Boeing 787') ON CONFLICT(modelo_aeronave) DO NOTHING;

INSERT INTO voo(origem,destino,data_hora) VALUES('Natal(RN)','Confins(MG)', '11/01/2020 21:30:00') ON CONFLICT(origem,destino) DO NOTHING;
INSERT INTO voo(origem,destino,data_hora) VALUES('Maceió(AL)','Guarulhos(SP)', '11/01/2020 22:20:00') ON CONFLICT(origem,destino) DO NOTHING;
INSERT INTO voo(origem,destino,data_hora) VALUES('Porto Seguro(BA)','Campinas(SP)', '11/01/2020 23:10:00') ON CONFLICT(origem,destino) DO NOTHING;
INSERT INTO voo(origem,destino,data_hora) VALUES('Boa Vista(RR)','Brasília(DF)', '12/01/2020 00:00:00') ON CONFLICT(origem,destino) DO NOTHING;
INSERT INTO voo(origem,destino,data_hora) VALUES('João Pessoa(PB)','Campinas(SP)', '12/01/2020 00:50:00') ON CONFLICT(origem,destino) DO NOTHING;

INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('12/01/2020','15/11/2019',13,14) ON CONFLICT DO NOTHING;
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','29/11/2019',11,13) ON CONFLICT DO NOTHING;
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','24/12/2019',15,11) ON CONFLICT DO NOTHING;
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('12/01/2020','30/12/2019',12,15) ON CONFLICT DO NOTHING;
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','05/01/2020',14,12) ON CONFLICT DO NOTHING;

INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Econômica','005', 'A.Internacional de Boa Vista',14,15) ON CONFLICT DO NOTHING;
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Econômica','003', 'A.Internacional de Maceió',12,13) ON CONFLICT DO NOTHING;
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Executiva','012', 'A.Internacional de João Pessoa',15,11) ON CONFLICT DO NOTHING;
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Executiva','001', 'Aeroporto de Porto Seguro',13,14) ON CONFLICT DO NOTHING;
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Primeira Classe','015', 'A.Internacional de Natal',11,12) ON CONFLICT DO NOTHING;

SELECT passageiros.nome, reserva.data_reserva, voo.data_hora 
FROM passageiros 
JOIN reserva ON reserva.id_pass = passageiros.id 
JOIN voo ON voo.id = reserva.id_voo ORDER BY passageiros.nome;

SELECT passageiros.nome, trecho_voo.classe, trecho_voo.assento
FROM trecho_voo 
JOIN reserva ON reserva.id_voo = trecho_voo.id_voo 
JOIN passageiros ON passageiros.id = reserva.id_pass ORDER BY passageiros.nome;

SELECT passageiros.nome, voo.destino
FROM voo 
JOIN reserva ON reserva.id_voo = voo.id
JOIN passageiros ON passageiros.id = reserva.id_pass ORDER BY passageiros.nome;

SELECT aeronave.modelo_aeronave, trecho_voo.aeroporto, voo.data_hora
FROM trecho_voo 
JOIN voo ON voo.id = trecho_voo.id_voo
JOIN aeronave ON aeronave.id = trecho_voo.id_aeronave ORDER BY voo.data_hora;

SELECT reserva.data_reserva, aeronave.modelo_aeronave, voo.origem, voo.destino
FROM aeronave 
JOIN trecho_voo ON trecho_voo.id_aeronave = aeronave.id
JOIN voo ON voo.id = trecho_voo.id_voo
JOIN reserva ON reserva.id_voo = trecho_voo.id_voo ORDER BY reserva.data_reserva;

