<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Indian Village</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #fff8e7;
            color: #3d3d2b;
        }

        /* Header */

        header {
            background-color: #4f772d;
            color: white;

            padding: 18px 8%;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
        }

        nav a {
            color: white;
            text-decoration: none;

            margin-left: 25px;

            font-size: 16px;
        }

        nav a:hover {
            color: #f9d976;
        }


        /* Hero Section */

        .hero {
            height: 500px;

            background:
                linear-gradient(
                    rgba(0, 0, 0, 0.35),
                    rgba(0, 0, 0, 0.35)
                ),

                url("https://images.unsplash.com/photo-1593693397690-362cb9666fc2?auto=format&fit=crop&w=1400&q=80");

            background-size: cover;
            background-position: center;

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

            padding: 0 20px;
        }

        .hero button {
            margin-top: 25px;

            padding: 13px 30px;

            border: none;

            background-color: #e9b44c;

            color: #3d3d2b;

            font-size: 16px;

            font-weight: bold;

            border-radius: 5px;

            cursor: pointer;
        }

        .hero button:hover {
            background-color: #f9d976;
        }


        /* Sections */

        .section {
            padding: 60px 10%;

            text-align: center;
        }

        .section h2 {
            font-size: 32px;

            color: #4f772d;

            margin-bottom: 15px;
        }

        .section p {
            max-width: 800px;

            margin: auto;

            color: #666;

            line-height: 1.7;
        }


        /* Village Life */

        .village-life {
            background-color: #eef4d3;
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
            background-color: white;

            width: 280px;

            border-radius: 10px;

            overflow: hidden;

            box-shadow: 0 5px 15px rgba(0,0,0,0.15);

            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
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
            color: #4f772d;

            margin-bottom: 10px;
        }


        /* Quote */

        .quote {
            background-color: #d9e7b8;

            padding: 50px 20px;

            text-align: center;
        }

        .quote h2 {
            color: #4f772d;

            margin-bottom: 15px;
        }

        .quote p {
            font-size: 20px;

            font-style: italic;

            color: #555;
        }


        /* Footer */

        footer {
            background-color: #2d3a1f;

            color: white;

            text-align: center;

            padding: 25px;
        }


        /* Mobile */

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
            }
        }

    </style>

</head>


<body>


<!-- Header -->

<header>

    <div class="logo">
        🌾 My Village
    </div>


    <nav>

        <a href="#">Home</a>

        <a href="#about">About</a>

        <a href="#life">Village Life</a>

        <a href="#nature">Nature</a>

    </nav>

</header>



<!-- Hero -->

<section class="hero">

    <h1>Welcome to My Indian Village 🌾</h1>

    <p>
        Simple life, green fields, fresh air,
        traditional culture and beautiful memories.
    </p>


    <button onclick="welcomeMessage()">

        Explore Village

    </button>

</section>



<!-- About -->

<section class="section" id="about">

    <h2>Life in the Village</h2>


    <p>

        Indian villages represent simplicity,
        tradition and a close connection with nature.

        Farmers work in green fields while families
        live together and celebrate festivals with happiness.

    </p>

</section>



<!-- Village Life -->

<section class="section village-life" id="life">

    <h2>Beautiful Village Life</h2>


    <div class="cards">


        <!-- Card 1 -->

        <div class="card">

            <img
            src="https://images.unsplash.com/photo-1594489428504-5c0c480a15fd?auto=format&fit=crop&w=600&q=80"
            alt="Indian Farming">


            <div class="card-content">

                <h3>🌾 Green Fields</h3>

                <p>

                    Agriculture is an important part
                    of village life.

                </p>

            </div>

        </div>



        <!-- Card 2 -->

        <div class="card">

            <img
            src="https://images.unsplash.com/photo-1609921212029-bb5a28e60960?auto=format&fit=crop&w=600&q=80"
            alt="Indian Village">


            <div class="card-content">

                <h3>🏡 Simple Homes</h3>

                <p>

                    Traditional homes represent
                    the beauty of simple living.

                </p>

            </div>

        </div>



        <!-- Card 3 -->

        <div class="card">

            <img
            src="https://images.unsplash.com/photo-1600100397608-f0103d4a6c6b?auto=format&fit=crop&w=600&q=80"
            alt="Indian Culture">


            <div class="card-content">

                <h3>🎉 Village Festivals</h3>

                <p>

                    Festivals bring families
                    and communities together.

                </p>

            </div>

        </div>


    </div>

</section>



<!-- Nature -->

<section class="section" id="nature">

    <h2>Close to Nature 🌳</h2>


    <p>

        Village life offers fresh air,
        green farms, beautiful trees,
        peaceful mornings and a simple lifestyle.

    </p>

</section>



<!-- Quote -->

<section class="quote">

    <h2>Village Life</h2>


    <p>

        "The real beauty of India lives in its villages." 🌾🇮🇳

    </p>

</section>



<!-- Footer -->

<footer>

    <p>

        © 2026 My Indian Village

        <br>

        Made with ❤️ and love for village life 🌾

    </p>

</footer>



<!-- JavaScript -->

<script>

    function welcomeMessage() {

        alert(
            "Welcome to the beautiful Indian Village! 🌾🇮🇳"
        );

    }

</script>


</body>

</html>
