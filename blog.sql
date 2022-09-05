-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 10:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `title` varchar(55) NOT NULL,
  `picture` varchar(55) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`title`, `picture`, `description`) VALUES
('WELCOME HOME FELLOW TRAVELER!', 'about.jpg', 'It takes a village to keep this website going. From tech and coding to design to fixing bugs to getting readers their books when downloads fail to scheduling social media or running the forums, I have a lot of help. I simply couldn’t run the website, write, travel, eat, sleep, or anything in between if I didn’t have the support and help of an amazing group of people.\r\n\r\nIt’s not just me writing and posting about my travels. I have a big group of full-time staff helping juggle everything.\r\n\r\nI’ve realized a lot of you don’t know that so, today, I want to introduce the team to you.\r\n\r\nSo, without further ado, here they are:');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Saymon Islam Iftikar', 'msaymonislamiftikar@gmail.com', 'admin123'),
(2, 'sudeepta chandra', '190204024@aust.edu', '123admin');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `guests` int(11) NOT NULL,
  `arrivals` date NOT NULL,
  `leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `email`, `phone`, `address`, `location`, `guests`, `arrivals`, `leaving`) VALUES
(1, 'M Saymon Islam Iftikar', 'msaymonislamiftikar@gmail.com', '01862657126', 'Boro Moheshkhali', 'Dhaka', 3, '2022-09-03', '2022-09-09'),
(2, '', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(3, '', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(4, '', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(5, 'M Saymon Islam Iftikar', 'msaymonislamiftikar@gmail.com', '01862657126', 'Dhaka', 'khulna', 3, '2022-09-03', '2022-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Cities'),
(2, 'Adventure '),
(3, 'Trecking'),
(4, 'Cruises'),
(5, 'Festivals'),
(6, 'Hill'),
(7, 'Beaches'),
(9, 'Mountain');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'cool', 'Saymon', 11, '2022-07-16 06:17:32'),
(2, 'joss', 'Sudeepta', 12, '2022-07-16 06:17:32'),
(3, 'Looks awesome', 'Saymon', 15, '2022-08-31 09:00:36'),
(4, 'Nice', 'Sudeepta', 14, '2022-08-31 09:00:36'),
(5, 'Nice work', 'Iftikar', 15, '2022-09-03 05:13:10'),
(6, 'Nice work', 'Iftikar', 15, '2022-09-03 05:13:25'),
(7, 'Nice work', 'Iftikar', 15, '2022-09-03 05:16:07'),
(8, 'wowww', 'saymon005', 10, '2022-09-03 05:19:55'),
(9, 'Nice work', 'M Saymon Islam Iftikar', 2, '2022-09-03 10:21:27'),
(10, 'Awesome', 'M Saymon Islam Iftikar', 17, '2022-09-03 13:46:20'),
(11, 'Awesome', 'M Saymon Islam Iftikar', 18, '2022-09-03 13:50:08'),
(12, 'Nice work', 'M Saymon Islam Iftikar', 15, '2022-09-03 15:49:19'),
(13, 'valo', 'Babar', 18, '2022-09-03 15:52:18'),
(14, 'Great', 'sudeepta', 18, '2022-09-03 15:55:15'),
(15, '', '', 18, '2022-09-03 15:56:05'),
(16, 'Great', 'M Saymon Islam Iftikar', 2, '2022-09-03 15:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `gmail`, `message`) VALUES
(1, 'Iftikar', 'msaymonislamiftikar@gmail.com', 'cool'),
(18, 'Aurnab', 'aurnab@gmail.com', 'it is takes more load time.'),
(19, 'Boni', 'boni@gmail.com', 'Hi'),
(20, 'Iftikar', 'msaymonislamiftikar@gmail.com', 'cool'),
(21, 'M Saymon Islam Iftikar', 'msaymonislamiftikar@gmail.com', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 1, 'post1.jpg'),
(2, 2, 'post2.jpg'),
(3, 3, 'post3.jpg'),
(4, 4, 'post4.jpg'),
(5, 5, 'post5.jpg'),
(6, 6, 'post6.jpg'),
(7, 7, 'post7.jpg'),
(8, 8, 'post8.jpg'),
(9, 9, 'post9.jpg'),
(10, 10, 'post10.jpg'),
(11, 11, 'post11.jpg'),
(12, 12, 'post12.jpg'),
(13, 13, 'post13.jpg'),
(14, 14, 'post14.jpg'),
(15, 15, 'post15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `gmail`, `password`) VALUES
(1, 'Saymon', 'saymonislamiftikar@gmail.com', 'e10adc3949ba59abbe56e057f20f88'),
(2, 'Ratul', 'ratul@gmail.com', 'e10adc3949ba59abbe56e057f20f88'),
(3, 'lal', 'lal@gmail.com', 'e10adc3949ba59abbe56e057f20f88'),
(4, 'jala', 'jala@gmail.com', 'e10adc3949ba59abbe56e057f20f88');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `department` varchar(55) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `social` varchar(255) NOT NULL,
  `pictures` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `department`, `institution`, `social`, `pictures`) VALUES
(1, 'Saymon Islam Iftikar', 'Computer Science and Engineering', 'Ahsanullah University of Science and Technology', 'linkedin.com', 'saymon.png'),
(2, 'Sudeepta Chandra Paul', 'Computer Science and Engineering', 'Ahsanullah University of Science and Technology', '#', 'sudeepta.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `pictures` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`, `pictures`) VALUES
(2, 'ALBANIA: A CASE FOR SUSTAINABLE TOURISM\r\n', 'Albania is just barely on the tourist map. While its coastal cities have their share of luxury resorts, and while plenty of holidaymakers party in cities like Sarande, Albania’s tourism sector is nothing compared to its neighbors.\r\n\r\nIt only sees around 6.4 million visitors per year, compared to Greece and Croatia, which get 34 million and 19 million respectively.\r\n\r\nNonetheless, prior to the pandemic, tourism in Albania jumped 8% from 2018 to 2019. From 2014 to 2019, it saw a 67% increase in tourism numbers, from 3.6 to 6.4 million.\r\n\r\nThat’s a huge increase in a short period of time.\r\n\r\nMy travels through the country showed me that the writing is clearly on the wall: Albania is going to be the next Croatia. In the same way tourism defines Croatia, so too will it define Albania.\r\n\r\nFirst, the backpacker scene is firmly established in Albania. There are lots of hostels, and backpackers talk about it frequently as a must-visit destination because it’s beautiful and cheap. (Backpackers love cheap destinations.)\r\n\r\nAnd mass tourism always follows the backpackers.\r\n\r\nWhile Albania is still a “weird” place to visit for most non-Europeans, COVID has changed that slightly, especially for Americans. Albania was one of the few countries that only had a short lockdown, and so, with yearlong visas, many Americans flocked there to work remotely during the pandemic.\r\n\r\nBut around the country, signs are pointing to a tourism future marred by unsustainability. While talking to tour operators, hostel owners, journalists, and random folks, there was a constant worry that the Albanian government doesn’t have the foresight and transparency to handle what they all recognized was coming: an explosion of tourists.\r\n\r\nA lot of this ties into Albania’s history. It’s a young democracy, still shaking off the communist and post-communist years. The ’90s and early 2000s were turbulent times, and corruption is still rife. There are huge development projects happening in Tirana that are clearly fronts for money laundering — a lot of buildings are going up and few of them have people in them.', '2022-07-14 18:00:00', 2, 'post2.jpg'),
(3, 'THE BEST NEIGHBORHOODS IN BARCELONA: WHERE TO STAY DURING YOUR VISIT', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2022-07-15 15:34:47', 1, 'post3.jpg'),
(4, 'TNN: EVERYTHING YOU WANT & NEED TO KNOW ABOUT TRAVEL INSURANCE', 'Planning a trip can be a lot of fun: researching amazing bucket-list activities, daydreaming about picture-perfect beaches and epic hikes, booking the cheap flights that will take you to the world’s most amazing destinations. Planning gives you ownership of your trip and lets you imagine all the wonderful adventures you’ll have.\r\nThis article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2022-07-15 15:35:21', 3, 'post4.jpg'),
(5, 'NM+ WEEKLY UPDATE 7/10/21: CRETE EDITION!', 'Hello from Crete! I’ve been loving this island. It’s fantastic. Since my last update, I spent a week in Santorini and have now been in Crete for the past week. I have another 3 days here before it’s back to Athens.This article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2022-07-14 21:27:29', 4, 'post5.jpeg'),
(6, 'THE ULTIMATE GUIDE TO TRAVELING WHEN YOU HAVE NO MONEY\r\n', 'Whenever I ask readers what the number one thing holding them back from traveling is I almost always get the same answer: Money.\r\n\r\nThis is something I hear from everyone I talk to: “Matt, I simply don’t have enough money to travel.”\r\n\r\nThis problem — and how to overcome it — is my most asked question. Over the past 12 years, I have answered this question in a plethora of posts, emails, tweets, and Facebook posts. Long-term readers might even be getting sick of me discussing this subject because it is one I talk about so much. \r\n\r\nBut I know no matter how often I address this question, it will come up again.\r\n\r\nSince this question comes up so often, I like to constantly remind people of this fact: You do not need to be rich to travel.\r\n\r\nLet’s repeat that: You do not need to be rich to travel.\r\n\r\nThere are plenty of ways to travel on a budget (and for free) — you just need to be willing to get creative.\r\n\r\nTraveling the world with no money sounds like an impossible dream. But it is possible, and you can do it responsibly without breaking the bank. It should be said that there are some expenses you shouldn’t compromise on (like travel insurance) but there are tons of ways you can travel the world on a budget — including plenty of ways you can actually travel for free.\r\n\r\nIn this post, I’m going to show you two things:\r\n\r\nHow to travel cheap\r\nHow to travel for free\r\nTraveling cheap is all about taking advantage of helpful apps and websites that save you money, finding ways to lower your expenses, and even making money as you travel. It’s about finding value and lowering your expenses while still being able to afford to do what you wa\r\nA sense of unity lingers in the air, and that’s one of the aspects really adds that little bit extra to the festival for me, ensuring that I will be returning for a third time, in the future.”', '2022-07-15 15:39:49', 5, 'post6.jpg'),
(7, 'HOW TO (LEGALLY) STAY IN EUROPE FOR MORE THAN 90 DAYS\r\n', 'When I planned my move to Sweden a few years ago, I tried to figure out how to get past the 90-day limit placed on tourist visas in the Schengen Area. This is a problem encountered by thousands of travelers every year and a question that regularly (especially this time of year) pops up in my inbox.\r\n\r\n“How can I stay in Europe for more than 90 days?”\r\n\r\nIt’s a simple question with a very complicated answer.\r\n\r\nI always knew it was complicated, but until I started researching how to stay there longer, I never knew just how complicated.\r\n\r\nFortunately, in the process of this research, I came to learn there are a few ways to stay in Europe longer than 90 days; they just aren’t well known.\r\n\r\nThis post will teach you the options for staying in Europe over 90 days as well as give you tips on how to move to Europe. But first a few things:', '2022-07-15 15:43:11', 1, 'post7.jpg'),
(8, 'NOTES FROM MY Carribien Cruise', 'It’s been two weeks since I plopped myself down in my bed in Austin. I’ve enjoyed using the time to catch up on all sorts of life stuff, reading, and sleeping. \r\n\r\nYou’d think that after nearly three months driving around the US, I’d have lots of travel stories to share. \r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by Englis', '2022-07-15 15:42:49', 4, 'post8.jpg'),
(9, 'How Much I Spent During Five Weeks in Greece', 'I was actually surprised I spent so much. I went a little over budget. But, to be fair, that is because I also spend like a travel writer. Since I work on the road, it’s very important to me to have a room with a desk and a workspace and those rooms tend to be more expensive.\r\n\r\nSecond, I tend to take way more tours than the average tourist, since I try everything to write about it. And I often hire private guides on my trips. I doubt many of you are going to drop hundreds of euros on multiple private tours.\r\n\r\nBetween private tours, some upscale accommodations, a lot of island-hopping, dropping a few hundred euros on drinks for a group of backpackers (I always pay it forward, since, when I began my travels, people did so for me), I probably spent about 600-700 EUR more than your average traveler. That would have dropped my daily expenses closer to 100 EUR which I think is more realistic for your “average tourist” budget.\r\n\r\nSo, with that said, let’s talk average prices, suggested budgets, and how much YOU really need!', '2022-07-15 15:42:28', 4, 'post9.jpg'),
(10, 'THE SATURDAY CITY: OVERRATED KRAKOW', 'This post was originally written in 2012. It\'s no longer on my blog but I thought I\'d share it here as an important reminder of just how subjective travel is.\r\n\r\nI’m just going to say it: Krakow, Poland, is an overrated destination.\r\n\r\nWhenever I travel through Europe, people always ask me if I’m going to visit Krakow.\r\n\r\n“No,” I usually respond.\r\nThis article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2022-07-15 15:41:49', 1, 'post10.jpg'),
(11, 'START PLANNING YOUR NEXT ADVENTURE HERE\r\n', 'It can be hard to know where to start when planning your dream trip.\r\n\r\nWhat’s the first step? What’s the second? Third? Fourth?\r\n\r\nTravel can seem like a daunting subject with so much information available and, the longer you go away, the more things you seem to have to think about.\r\n\r\nI want to make planning your next gap year, family vacation, around the world, or backpacking trip simple and easy.\r\n\r\nOn this page, you’ll find a curated list of the best articles on this site related to planning a trip – whether it’s a two week vacation to Italy, or a year-long trip around the world. The tips are broken down into categories so you can find the information you need fast and effectively.', '2022-07-15 15:41:00', 2, 'post11.jpg'),
(12, '12 THINGS I’D TELL ANY NEW TRAVELER\r\n', 'Hope. Fear. Excitement. Traveling for the first time produced a wave of emotions.\r\n\r\nWhen I left to travel the world on my first round-the-world trip, I didn’t know what to expect.\r\n\r\nNow, with fifteen years of travel experience under my belt, I know better. Traveling is second nature to me now. I land in an airport and I just go on autopilot.\r\n\r\nBut, back then, I was as green as they come.\r\n\r\nTo compensate for my lack of experience, I followed my guidebooks and wet my feet by going on organized tours. I was young and inexperienced and I made a lot of rookie travel mistakes.\r\n\r\nI know what it’s like to just be starting out and have a mind filled with questions, anxieties, and concerns.\r\n\r\nSo, if you’re new to travel and looking for advice to help you prepare, here are 12 tips that I’d tell a new traveler to help them avoid some of my early mistakes:', '2022-07-15 15:40:36', 3, 'post12.jpeg'),
(13, 'THE 13 BEST THINGS TO SEE & DO ON THE OREGON COAST', 'Foggy, seeming perpetually damp, vibrantly green, and filled with tiny fishing villages, Oregon’s coast reminds me a lot of my home region of New England. Not so much weather-wise – New England isn’t as damp – but they both have a similar spirit. Here, like there, seafood is king, the towns are tiny and tight-knit, and the people are hardy and welcoming.\r\n\r\nHaving driven this part of the Pacific coast twice now and I can confidently say that this stretch of road is one of the most scenic in the country. While the distance from Astoria in the north to Brookings in the south looks vast on a map, it’s not: you can actually drive along the region’s spine, Route 101, from end to end in a day.\r\n', '2022-07-15 15:40:17', 2, 'post13.jpg'),
(14, 'WEEKLY UPDATE: GREECE EDITION (6/26/21)', 'Greeting from Greece! I’m currently in Ios. Now, first, let me say, I know way back in May I said this would be weekly. But these updates have been anything but weekly. Last week, I was traveling. The week before, it was my birthday. So, let me say that these updates will happen as frequently as possible but I can’t promise them every week! I just want to set realistic expectations.This article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n', '2022-07-15 15:38:37', 1, 'post14.jpg'),
(15, 'The Lookout', 'On a beautiful sun-drenched wooden deck, the aptly named Lookout cafe lures locals with its robust coffee, winning harbour views and seasonal brunch. Reminiscent of a beachside kiosk, the cafe has an open-plan kitchen and spacious outdoor seating. A gentle harbour breeze blows onto the deck while patrons enjoy front-row seats to the show of boats cruising on Elizabeth Bay.\r\n\r\nThe food menu is simple but creative. There’s corn fritters served with whipped avocado, salsa, herb salad and a perfect runny poached egg. The hotcakes are covered in a piquant raspberry jam and come with a generous slab of yoghurt ganache. Heartier lunch options include a classic beer battered fish\'n’chips, a seared-tuna poke bowl with ponzu dressing, and fathead fish tacos with Asian ‘slaw.', '2022-08-21 19:56:53', 2, 'post15.jpg'),
(18, '4 Days Mussoorie Dhanaulti Tour.', '<p><span style=\"color: rgb(66, 66, 66); font-family: poppins, sans-serif; font-size: 14px;\">With our 4 Days Mussoorie <strong>Dhanaulti tour package</strong>, you will discover one of the most enigmatic cities of Uttarakhand. Mussoorie is a quaint hill station located in the heart of Uttarakhand. Developed by the British, this <strong>hill station</strong> has always been a tourist favorite. Dhanaulti is a pristine hill town, which is a perfect escape from the hustle and <em>bustle.&nbsp;</em></span></p>\r\n', '2022-09-03 13:49:42', 6, 'nature2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
