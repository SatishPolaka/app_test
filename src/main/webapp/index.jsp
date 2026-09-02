<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>India Heritage</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #fff8ed;
            color: #3d2b1f;
        }

        /* Header */
        header {
            background-color: #8b1e1e;
            color: white;
            padding: 18px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 16px;
        }

        nav a:hover {
            color: #ffd27f;
        }

        /* Hero */
        .hero {
            background:
                linear-gradient(rgba(70, 20, 10, 0.55),
                rgba(70, 20, 10, 0.55)),
                url("https://images.unsplash.com/photo-1524492412937-b28074a5d7da?auto=format&fit=crop&w=1400&q=80");

            background-size: cover;
            background-position: center;

            height: 500px;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;

            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 50px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 20px;
            max-width: 650px;
        }

        .hero button {
            margin-top: 25px;
            padding: 13px 28px;
            border: none;
            background-color: #e6a43b;
            color: #3d2b1f;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }

        .hero button:hover {
            background-color: #ffd27f;
        }

        /* About */
        .section {
            padding: 60px 10%;
            text-align: center;
        }

        .section h2 {
            color: #8b1e1e;
            font-size: 32px;
            margin-bottom: 15px;
        }

        .section p {
            color: #666;
            line-height: 1.7;
            max-width: 800px;
            margin: auto;
        }

        /* Cards */
        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            margin-top: 35px;
        }

        .card {
            background: white;
            width: 280px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        .card img {
            width: 100%;
            height: 190px;
            object-fit: cover;
        }

        .card-content {
            padding: 20px;
        }

        .card h3 {
            color: #8b1e1e;
            margin-bottom: 10px;
        }

        /* Culture */
        .culture {
            background-color: #f2dfbd;
        }

        /* Footer */
        footer {
            background-color: #3d2b1f;
            color: white;
            text-align: center;
            padding: 25px;
        }

        @media (max-width: 768px) {

            header {
                flex-direction: column;
                gap: 15px;
            }

            nav a {
                margin: 8px;
            }

            .hero h1 {
                font-size: 34px;
            }

            .hero p {
                font-size: 16px;
                padding: 0 20px;
            }
        }

    </style>
</head>

<body>

    <!-- Header -->

    <header>

        <div class="logo">
            भारत Heritage
        </div>

        <nav>
            <a href="#">Home</a>
            <a href="#about">About India</a>
            <a href="#culture">Culture</a>
            <a href="#places">Places</a>
        </nav>

    </header>


    <!-- Hero Section -->

    <section class="hero">

        <h1>Discover Incredible India</h1>

        <p>
            A land of rich culture, beautiful traditions,
            colorful festivals and unforgettable heritage.
        </p>

        <button onclick="showMessage()">
            Explore India
        </button>

    </section>


    <!-- About -->

    <section class="section" id="about">

        <h2>The Beauty of India</h2>

        <p>
            India is known for its rich history, diverse culture,
            traditional values and beautiful landscapes. From the
            Himalayas in the north to the beaches in the south,
            every part of India has its own unique story.
        </p>

    </section>


    <!-- Culture -->

    <section class="section culture" id="culture">

        <h2>Indian Culture</h2>

        <div class="cards">

            <div class="card">

                <img src="https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=600&q=80">

                <div class="card-content">

                    <h3>Traditional Food</h3>

                    <p>
                        Indian food is famous around the world for
                        its rich spices and different flavors.
                    </p>

                </div>

            </div>


            <div class="card">

                <img src="https://images.unsplash.com/photo-1599661046827-dacff0c0f09a?auto=format&fit=crop&w=600&q=80">

                <div class="card-content">

                    <h3>Indian Festivals</h3>

                    <p>
                        Festivals bring people together with colors,
                        happiness and traditional celebrations.
                    </p>

                </div>

            </div>


            <div class="card">

                <img src="https://images.unsplash.com/photo-1524492412937-b28074a5d7da?auto=format&fit=crop&w=600&q=80">

                <div class="card-content">

                    <h3>Indian Heritage</h3>

                    <p>
                        India has beautiful monuments and historical
                        places that represent its rich heritage.
                    </p>

                </div>

            </div>

        </div>

    </section>


    <!-- Places -->

    <section class="section" id="places">

        <h2>Explore Beautiful Places</h2>

        <p>
            Taj Mahal, Jaipur, Kerala, Hyderabad, Varanasi,
            Ladakh and many more beautiful places are waiting
            to be explored.
        </p>

    </section>


    <!-- Footer -->

    <footer>

        <p>
            © 2026 India Heritage |
            Made with ❤️ for Incredible India
        </p>

    </footer>


    <script>

        function showMessage() {

            alert(
                "Welcome to Incredible India! 🇮🇳"
            );

        }

    </script>

</body>
</html>
