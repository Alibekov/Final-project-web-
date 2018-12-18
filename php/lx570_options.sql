CREATE TABLE `lx570_options` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `lx570_options` (`id`, `name`, `descript`, `img`, `price`) VALUES
(1, 'Colour', 'Choose a colour', '', 1500.00),
(2, 'Discs', 'Choose a discs', '', 800.00),
(3, 'Salon', 'Choose a colour of your salon', '', 300.00),
(4, 'Accessories', 'Choose a accessories', '', 800.00);

ALTER TABLE `lx570_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`name`);


ALTER TABLE `lx570_options`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;