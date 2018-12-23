CREATE TABLE `lx570_options` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `lx570_options` (`id`, `name`, `descript`, `img`, `price`) VALUES
(1, 'Colour', 'Blue', 'blue.jpg', 1500.00),
(2, 'Colour', 'Black', 'black.jpg', 800.00),
(3, 'Colour', 'White', 'white.jpg', 300.00),
(4, 'Colour', 'Grey', 'grey.jpg', 800.00),
(5, 'Accessories', 'Safety system', 'glonas.jpg', 1500.00),
(6, 'Accessories', 'Cameras 360', '360.jpg', 800.00),
(7, 'Accessories', 'Parrotron', 'part.jpg', 300.00),
(8, 'Discs', 'Radius 20', 'discs1.jpg', 800.00),
(9, 'Discs', 'Radius 21', 'discs2.jpg', 800.00);

ALTER TABLE `lx570_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`name`);


ALTER TABLE `lx570_options`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;