-- DML - DATA MANIPULATION LANGUAGE, aqui temos comandos como: SELECT,INSERT,DELETE,UPDATE,MERGE, CALL, LOOK TABLE, JOIN , LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN
-- POSTGRESQL



INSERT INTO passageiros(nome) VALUES('Julia Almeida');
INSERT INTO passageiros(nome) VALUES('Erick Cavalcante');
INSERT INTO passageiros(nome) VALUES('Tiago Martins');
INSERT INTO passageiros(nome) VALUES('Marisa Souza');
INSERT INTO passageiros(nome) VALUES('Shopia Correia');

INSERT INTO aeronave(modelo_aeronave) VALUES('Boeing 747');
INSERT INTO aeronave(modelo_aeronave) VALUES('ATR 42-500');
INSERT INTO aeronave(modelo_aeronave) VALUES('Embraer 190');
INSERT INTO aeronave(modelo_aeronave) VALUES('Airbus 320');
INSERT INTO aeronave(modelo_aeronave) VALUES('Boeing 787');

INSERT INTO voo(origem,destino,data_hora) VALUES('Natal(RN)','Confins(MG)', '11/01/2020 21:30:00');
INSERT INTO voo(origem,destino,data_hora) VALUES('Maceió(AL)','Guarulhos(SP)', '11/01/2020 22:20:00');
INSERT INTO voo(origem,destino,data_hora) VALUES('Porto Seguro(BA)','Campinas(SP)', '11/01/2020 23:10:00');
INSERT INTO voo(origem,destino,data_hora) VALUES('Boa Vista(RR)','Brasília(DF)', '12/01/2020 00:00:00');
INSERT INTO voo(origem,destino,data_hora) VALUES('João Pessoa(PB)','Campinas(SP)', '12/01/2020 00:50:00');

INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('12/01/2020','15/11/2019',13,14);
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','29/11/2019',11,13);
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','24/12/2019',15,11);
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('12/01/2020','30/12/2019',12,15);
INSERT INTO reserva(prazo_validade,data_reserva,id_pass,id_voo) VALUES('11/01/2020','05/01/2020',14,12);


INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Econômica','005', 'A.Internacional de Boa Vista',14,15);
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Econômica','003', 'A.Internacional de Maceió',12,13);
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Executiva','012', 'A.Internacional de João Pessoa',15,11);
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Executiva','001', 'Aeroporto de Porto Seguro',13,14);
INSERT INTO trecho_voo(classe,assento,aeroporto,id_voo,id_aero) VALUES('Primeira Classe','015', 'A.Internacional de Natal',11,12);

