-- 테스트 계정
-- TODO: 테스트용이지만 비밀번호가 노출된 데이터 세팅. 개선하는 것이 좋을 지 고민해 보자.
insert into user_account (user_id, user_password, nickname, email, memo, created_at, created_by, modified_at, modified_by) values
    ('uno', 'asdf1234', 'Uno', 'uno@mail.com', 'I am Uno.', now(), 'uno', now(), 'uno')
;

insert into article (id, title, content, created_at, modified_at, created_by, modified_by)
values (49, 'uno',
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        '2021-03-02 22:40:04', '2021-04-27 15:38:09', 'Lind', 'Orv'),
       (108, 'uno',
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        '2021-06-08 04:36:02', '2022-01-25 15:35:42', 'Trstram', 'Loy'),
       (31, 'uno2',
        'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
        '2021-04-10 00:47:10', '2021-02-06 20:58:04', 'Duff', 'Early'),
       (120, 'uno2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',
        '2021-08-21 08:39:39', '2021-11-17 22:47:35', 'Sydney', 'Boony'),
       (123, 'uno2',
        'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
        '2021-06-17 10:57:29', '2021-05-13 12:28:47', 'Burk', 'Markus'),
       (39, 'uno2',
        'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',
        '2022-01-15 11:37:12', '2021-02-19 17:42:22', 'Calvin', 'Garreth'),
       (30, 'uno2',
        'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
        '2021-11-23 18:29:30', '2021-03-09 00:57:27', 'Kain', 'Bruno'),
       (57, 'uno2',
        'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',
        '2021-03-19 18:39:02', '2021-03-16 17:47:17', 'Kippie', 'Alexio'),
       (41, 'uno2',
        'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
        '2021-03-21 16:34:30', '2021-03-17 15:18:55', 'Frannie', 'Horacio'),
       (100, 'uno2',
        'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',
        '2021-02-24 16:53:08', '2021-05-09 06:00:58', 'Osborn', 'Pren'),
       (48, 'uno2', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021-03-29 08:26:41',
        '2021-11-22 20:55:26', 'Dorie', 'Georgie'),
       (122, 'uno2',
        'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',
        '2021-06-12 07:38:25', '2021-03-03 07:14:43', 'Obed', 'Chrissy'),
       (87, 'uno2', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
        '2021-05-11 08:47:16', '2021-04-13 00:47:50', 'Reinhard', 'Robbert')
;


-- 댓글
insert into article_comment (id, article_id, content, created_at, modified_at, created_by, modified_by)
values (49, 30,
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        '2021-03-02 22:40:04', '2021-04-27 15:38:09', 'Lind', 'Orv'),
       (108, 30,
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        '2021-06-08 04:36:02', '2022-01-25 15:35:42', 'Trstram', 'Loy'),
       (120, 39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',
        '2021-08-21 08:39:39', '2021-11-17 22:47:35', 'Sydney', 'Boony'),
       (123, 39,
        'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
        '2021-06-17 10:57:29', '2021-05-13 12:28:47', 'Burk', 'Markus'),
       (39, 39,
        'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',
        '2022-01-15 11:37:12', '2021-02-19 17:42:22', 'Calvin', 'Garreth'),
       (30, 39,
        'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
        '2021-11-23 18:29:30', '2021-03-09 00:57:27', 'Kain', 'Bruno'),
       (57, 39,
        'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',
        '2021-03-19 18:39:02', '2021-03-16 17:47:17', 'Kippie', 'Alexio'),
       (41, 39,
        'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
        '2021-03-21 16:34:30', '2021-03-17 15:18:55', 'Frannie', 'Horacio'),
       (100, 39,
        'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',
        '2021-02-24 16:53:08', '2021-05-09 06:00:58', 'Osborn', 'Pren'),
       (48, 39, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021-03-29 08:26:41',
        '2021-11-22 20:55:26', 'Dorie', 'Georgie'),
       (122, 39,
        'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',
        '2021-06-12 07:38:25', '2021-03-03 07:14:43', 'Obed', 'Chrissy'),
       (87, 39, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
        '2021-05-11 08:47:16', '2021-04-13 00:47:50', 'Reinhard', 'Robbert'),
       (22, 39,
        'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',
        '2021-09-18 10:27:37', '2021-09-29 20:31:09', 'Odie', 'Britt'),
       (97, 39, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',
        '2021-12-14 01:55:52', '2021-11-02 15:12:00', 'Ulises', 'Denney'),
       (103, 39, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2021-04-03 11:44:04', '2022-01-05 21:01:34',
        'Kendricks', 'Aubert'),
       (25, 39,
        'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',
        '2021-05-25 09:46:40', '2021-10-10 18:46:59', 'Dal', 'Maxy'),
       (18, 39,
        'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',
        '2021-09-26 00:29:13', '2021-07-10 01:44:07', 'Carl', 'Riley'),
       (89, 39,
        'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',
        '2021-12-11 05:07:10', '2021-05-31 15:26:03', 'Dex', 'Wallas'),
       (107, 39,
        'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',
        '2021-10-31 11:33:44', '2021-03-04 15:19:35', 'Lutero', 'Hussein'),
       (90, 39,
        'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',
        '2021-08-17 14:52:58', '2021-11-24 16:28:01', 'Garvy', 'Gris'),
       (121, 39,
        'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',
        '2021-02-17 16:50:19', '2021-01-31 09:21:51', 'Shayne', 'Stafford'),
       (91, 39,
        'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',
        '2021-06-23 10:06:39', '2021-10-27 22:04:41', 'Haze', 'Giraldo'),
       (32, 39, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',
        '2021-10-21 19:41:56', '2021-03-12 02:47:38', 'Cobbie', 'Thornton'),
       (47, 39, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2021-05-02 07:45:04', '2021-06-26 13:36:44', 'Humfried',
        'Bram'),
       (92, 39,
        'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',
        '2021-10-22 04:46:24', '2021-07-06 02:25:34', 'Luis', 'Chicky'),
       (76, 39,
        'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
        '2021-12-30 18:39:24', '2021-10-13 03:58:46', 'Derwin', 'Zacherie'),
       (31, 39, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',
        '2021-11-07 02:25:31', '2021-11-30 11:15:34', 'Boris', 'Egbert'),
       (29, 39, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
        '2021-11-27 19:03:53', '2021-02-16 07:42:30', 'Gabriel', 'Gary'),
       (115, 39,
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        '2021-12-30 17:50:07', '2021-10-13 11:06:50', 'Gilles', 'Derrek'),
       (106, 39, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2021-06-10 02:26:59',
        '2021-12-17 18:00:38', 'Jodie', 'Whitney')
;