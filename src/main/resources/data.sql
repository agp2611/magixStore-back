--Esse arquivo serve para popular o banco de dados com dados iniciais.


--Populando a tabela de usuários
INSERT INTO users (id, name, email, password, user_type)
VALUES (1,
        'Admin',
        'admin@adm.com',
        '$2a$10$BrMrvLwzBQ6nkJmgKo0rWezL6/K12k.9GK6ZY9aMRj3jMwqjZXcom', --123456
        'ADMIN')
ON CONFLICT (id) DO NOTHING;


--Populando a tabela de produtos
INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (1,
        'Boné da Anabeth',
        'O chapéu permite que seu usuário fique completamente invisível, presente de Athena.',
        379.9,
        2,
        'https://static1.srcdn.com/wordpress/wp-content/uploads/2023/12/percy-jackson-annabeth-new-york-yankees-cap.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (2,
        'Coroa mágica de gardenia',
        'A coroa brilha quando colocada sobre o verdadeiro herdeiro de Gardania.',
        1119.9,
        1,
        'https://static.wikia.nocookie.net/barbie-movies/images/2/2c/GardaniaMagicalCrown.png/revision/latest?cb=20111229193140',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (3,
        'Chapéu da Elphaba',
        'Tornou-se uma marca registrada não só para a Bruxa Má do Oeste, Elphaba, mas para as bruxas em geral.',
        899.9,
        57,
        'https://i.pinimg.com/1200x/55/f5/6d/55f56d38372ae0f3292182ab498319dd.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (4,
        'Varinha da princesa Alexa',
        'Usada para conjurar objetos, encantar objetos inanimados e manipular matéria à sua vontade.',
        899.9,
        28,
        'https://static.wikia.nocookie.net/barbie-movies/images/9/94/Alexawand.JPG/revision/latest?cb=20140924170440',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (5,
        'Felix felicis',
        'Sorte líquida, é uma poção mágica que torna o bebedor sortudo por um período de tempo limitado, durante o qual tudo o que fizer terá um resultado positivo.',
        3259.9,
        39,
        'https://fantasyfragment.com/wp-content/uploads/2025/05/file_0000000060b861f6bec8dc673cd69886-768x1152.png',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (6,
        'Espada do Percy',
        'É feito de Bronze Celestial, que não prejudica mortais, mas "passa por eles como uma ilusão". Ele tem a habilidade mágica de nunca se perder.',
        939.9,
        12,
        'https://static.wikia.nocookie.net/olympians/images/7/7c/Riptide.jpg/revision/latest/scale-to-width-down/1000?cb=20130709064232',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (7,
        'Sapatilhas mágicas',
        'São sapatilhas de balé rosa pontudas que podem transportar pessoas magicamente para um mundo mágico do balé.',
        399.9,
        50,
        'https://static.wikia.nocookie.net/barbie-movies/images/6/6d/Vlcsnap-2013-02-16-16h24m41s251.png/revision/latest/scale-to-width-down/1000?cb=20130218201758',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (8,
        'Pincel de Rapunzel',
        'Transforma tudo que é pintado em realidade.',
        129.9,
        42,
        'https://static.wikia.nocookie.net/barbie-movies/images/0/06/Barbie-rapunzel-disneyscreencaps.com-3636.jpg/revision/latest?cb=20130609131327',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (9,
        'Poção polissuco',
        'Permite se transformar na pessoa em que algum item seja acrescentado à poção.',
        99.9,
        7,
        'https://i.pinimg.com/originals/33/d5/f9/33d5f97b623140554b94b752875197a2.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (10,
        'Lâmpada do gênio',
        'É o lar do Gênio e anteriormente a sua prisão.',
        2459.9,
        7,
        'https://th.bing.com/th/id/R.e0df1859919195e197df329e6c9cfc76?rik=449w%2fHU3IN8d%2bg&pid=ImgRaw&r=0',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (11,
        'Mjölnir',
        'Martelo do deus do trovão.',
        8999.9,
        1,
        'https://mythicalcreatures.info/media/Mjolnir-2-768x439.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (12,
        'Varinha mágica',
        'Usada pela fada madrinha da Cinderela.',
        999.9,
        110,
        'https://static.wikia.nocookie.net/disney/images/2/29/Wand3.jpg/revision/latest?cb=20150820021803&path-prefix=pt-br',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (13,
        'Olho de agamotto',
        'Possui a capacidade de revelar tudo o que está oculto para seu usuário. O Olho se fecha para qualquer um que pratique artes das trevas.',
        5799.9,
        2,
        'https://i.pinimg.com/736x/02/ba/82/02ba8221a4f0608f388e10829b858662.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (14,
        'Sapatos alados de Hermes',
        'Ao ouvir a palavra "Maia", eles brotam asas e permitem ao usuário voar. Se for dita quando as asas estão abertas, elas se encolhem.',
        1299.9,
        70,
        'https://static1.srcdn.com/wordpress/wp-content/uploads/2023/12/percy-looking-at-the-winged-sneakers-luke-gives-him-in-percy-jackson-and-the-olympians-episode-3.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (15,
        'Beba-me',
        'Ao ingerir, diminui de tamanho rapidamente. Bebida por alice.',
        39.9,
        70,
        'https://static.wikia.nocookie.net/aliceinwonderland/images/c/c6/Drinkme11.png/revision/latest?cb=20120404063946',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (16,
        'Cordial',
        'Cura qualquer dor ou ferimento, podendo trazer pessoas de volta da beira da morte.',
        5999.9,
        2,
        'https://i.etsystatic.com/41736038/r/il/304569/6210834108/il_1080xN.6210834108_ttdw.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (17,
        'Frasco de Galadriel',
        'Contém água da fonte de Galadriel, impregnada com um pouco da luz da estrela de Eärendil.',
        399.9,
        6,
        'https://tse2.mm.bing.net/th/id/OIP.s_OREaNb2ykRelv5kykJ8gHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (18,
        'Vira tempo',
        'Dispositivo mágico utilizado para viajar no tempo.',
        899.9,
        19,
        'https://http2.mlstatic.com/D_NQ_NP_2X_22780-MLB20234897340_012015-F.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (19,
        'Pomo de ouro',
        'O pomo de ouro é uma pequena esfera dourada com asas, usada no quadribol. Ele é extremamente rápido e difícil de pegar.',
        1399.9,
        2,
        'https://down-br.img.susercontent.com/file/27f17b74c3ad498f7fa1f38c13720d99',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (20,
        'Varinha de sabugueiro',
        'A mais poderosa de todas.',
        1359.9,
        1,
        'https://universosagas.ig.com.br/wp-content/uploads/2024/01/Harry-Potter-Elder-Wand.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (21,
        'Colar de Merliah',
        'Pode ser usado para se transformar em sereia ou humano sempre que precisar.',
        459.9,
        5,
        'https://static.wikia.nocookie.net/barbie-movies/images/4/48/Merliah%27snecklace.png/revision/latest?cb=20130711171518',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (22,
        'Um anel',
        'Ele é o mais poderoso de todos os anéis mágicos, e tem a capacidade de controlar os outros anéis e seus portadores.',
        3334.9,
        1,
        'https://uploads.jovemnerd.com.br/wp-content/uploads/2018/07/senhor-dos-aneis-serie.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (23,
        'Cálice Tribruxo',
        'Objeto mágico que serve como um portal para o Torneio Tribruxo, um evento mágico que ocorre a cada sete anos entre as três maiores escolas de magia do mundo: Hogwarts, Beauxbatons e Durmstrang.',
        15304.9,
        3,
        'https://tse1.mm.bing.net/th/id/OIP.rz4YyAyj6QXE1ozPD4SM7gHaL9?rs=1&pid=ImgDetMain&o=7&rm=3',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (24,
        'Mapa do Maroto',
        'mapa mágico que mostra a localização de todas as pessoas dentro de Hogwarts, incluindo os corredores secretos e passagens escondidas. Ele foi criado por quatro estudantes de Hogwarts: James Potter, Sirius Black, Remus Lupin e Peter Pettigrew, que se autodenominaram "Marotos". O mapa é ativado ao tocar a ponta da varinha na superfície do mapa e dizendo "Juro solenemente que não tenho boas intenções".',
        299.9,
        33,
        'https://cinemaweb.com.br/wp-content/uploads/2024/06/o-mapa-nao-era-infalivel-1024x580.jpg?x14884',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (25,
        'Coração de te fiti',
        'O coração de Te Fiti é um artefato mágico que tem o poder de criar vida e restaurar a natureza.',
        4569.9,
        22,
        'https://i.pinimg.com/736x/8a/01/f9/8a01f9b8d0153c43d0d9e5bc68726b03.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (26,
        'Glitterizer',
        'Permite melhorar 3x mais qualquer peça de roupa, desde que seja verdadeiramente estilosa.',
        749.9,
        100,
        'https://i.pinimg.com/originals/1c/bf/a5/1cbfa50d24da16561ec8a08142d8a632.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (27,
        'Lembrol',
        'Esfera com uma fumaça mágica em seu interior que se torna vermelha quando o dono esquece de algo.',
        349.9,
        84,
        'https://tse2.mm.bing.net/th/id/OIP.5dzSuWioqGB4hxbeXZ8z9gHaFk?rs=1&pid=ImgDetMain&o=7&rm=3',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (28,
        'Medalhão de Salazar Slytherin',
        'O medalhão de Salazar Slytherin é um artefato mágico que tem a capacidade de proteger seu portador e conceder-lhe habilidades especiais. Ele é um dos Horcruxes criados por Lord Voldemort, e contém uma parte de sua alma, o que o torna extremamente poderoso e perigoso.',
        999.9,
        7,
        'https://3.bp.blogspot.com/-NJCFnnDPZ0k/T096yv2OdLI/AAAAAAAAACs/4niO0exPgng/s1600/O+Medalh%C3%A3o+de+Slytherin.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (29,
        'Darkhold',
        'O Darkhold é um livro mágico que contém conhecimentos proibidos e poderosas magias.',
        1119.9,
        2,
        'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/07/darkhold-mcu.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (30,
        'Amortentia',
        'A Amortentia é uma poção extremamente poderosa que faz com que a pessoa que a toma se sinta apaixonada por quem a preparou.',
        119.9,
        69,
        'https://media.sketchfab.com/models/429c09c0548345c180f3e801d4d1cedb/thumbnails/a3cfa2e5c4fe414f8c2845023d1e0d24/ed3c33fb2cca488e8baae6ce00bde21b.jpeg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (31,
        'Coma-me',
        'Ao ingerir, aumenta de tamanho rapidamente, Comido por Alice.',
        49.9,
        72,
        'https://static.wikia.nocookie.net/aliceinwonderland/images/b/b2/Eatme11.png/revision/latest?cb=20120404063547',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (32,
        'Escova mágica de Tori',
        'Pode alterar mágicamente o visual do cabelo.',
        569.9,
        5,
        'https://static.wikia.nocookie.net/barbie-movies/images/7/77/Tori%27s_hairbrush.png/revision/latest?cb=20120921124624',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (33,
        'Anel de solaria',
        'Ele pode ser transformado em um cetro que Stella normalmente usa para lançar feitiços, ou teletransportar a si mesma e outras pessoas para um determinado lugar.',
        1239.9,
        27,
        'https://static.wikia.nocookie.net/destin-la-saga-des-winx/images/8/82/EskgXB6XEAAvjs1.jpg/revision/latest?cb=20210804134525&path-prefix=fr',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (34,
        'Sapatinhos de rubi',
        'Eles têm a capacidade de transportar a pessoa que os usa para qualquer lugar que deseje, desde que saiba o caminho para chegar lá.',
        1339.9,
        64,
        'https://cdn.culturagenial.com/imagens/o-magico-de-oz-sapto-de-rubi.jpg?class=article',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (35,
        'Anel da lua',
        'O Anel da Lua é um artefato mágico que tem a capacidade de absorver o poder da lua e amplificar os poderes mágicos do portador.',
        2339.9,
        91,
        'https://i.pinimg.com/originals/e3/30/c3/e330c3fe58889b2c27b58dc2bb2a60a2.jpg',
        true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, price, stock, image_url, active)
VALUES (36,
        'Grimmerie',
        'A Grimmerie é um livro mágico que contém conhecimentos proibidos e poderosas magias, poucas pessoas conseguem lê-lo. Um feitiço do grimmeria jamais pode ser desfeito.',
        1119.9,
        2,
        'https://image.idntimes.com/post/20251127/screenshot-2025-11-27-143832_4efdff71-1864-49f0-8aa1-61c2008f2423.png',
        true)
ON CONFLICT (id) DO NOTHING;

SELECT setval('products_id_seq', (SELECT MAX(id) FROM products));
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));