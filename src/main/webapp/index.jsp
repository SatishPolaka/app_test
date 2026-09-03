<!DOCTYPE html>
<html lang="te">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>మన ఊరు GNANESAR | Mana Ooru</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body {
            font-family: Arial, sans-serif;
            background-color: #fff9ed;
            color: #3f3a2b;
        }


        /* Header */

        header {
            background-color: #8b3a1c;
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
            color: #ffd166;
        }


        /* Hero Section */

        .hero {

            height: 520px;

            background:

                linear-gradient(
                    rgba(0, 0, 0, 0.40),
                    rgba(0, 0, 0, 0.40)
                ),

                url(
                    "https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=1400&q=80"
                );


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

            font-size: 52px;

            margin-bottom: 18px;
        }


        .hero h2 {

            font-size: 24px;

            margin-bottom: 20px;

            color: #ffd166;
        }


        .hero p {

            font-size: 19px;

            max-width: 700px;

            padding: 0 20px;

            line-height: 1.6;
        }


        .hero button {

            margin-top: 25px;

            padding: 14px 30px;

            border: none;

            background-color: #e9a23b;

            color: #3f2a1d;

            font-size: 16px;

            font-weight: bold;

            border-radius: 6px;

            cursor: pointer;
        }


        .hero button:hover {

            background-color: #ffd166;
        }


        /* Common Section */

        .section {

            padding: 65px 10%;

            text-align: center;
        }


        .section h2 {

            font-size: 32px;

            color: #8b3a1c;

            margin-bottom: 18px;
        }


        .section p {

            max-width: 850px;

            margin: auto;

            color: #666;

            line-height: 1.8;

            font-size: 16px;
        }


        /* Village Life */

        .village-life {

            background-color: #eaf2d5;
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

            width: 290px;

            border-radius: 12px;

            overflow: hidden;

            box-shadow:
                0 5px 18px
                rgba(0, 0, 0, 0.15);

            transition: 0.3s;
        }


        .card:hover {

            transform:
                translateY(-8px);
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

            color: #8b3a1c;

            margin-bottom: 12px;

            font-size: 21px;
        }


        .card p {

            font-size: 14px;
        }


        /* Festival Section */

        .festival {

            background-color: #fff0c9;
        }


        /* Quote */

        .quote {

            background-color: #7a3d1c;

            color: white;

            text-align: center;

            padding: 60px 20px;
        }


        .quote h2 {

            font-size: 30px;

            margin-bottom: 18px;
        }


        .quote p {

            font-size: 21px;

            font-style: italic;

            line-height: 1.7;
        }


        /* Footer */

        footer {

            background-color: #3d2b1f;

            color: white;

            text-align: center;

            padding: 25px;
        }


        /* Mobile */

        @media
        (max-width: 768px) {


            header {

                flex-direction: column;

                gap: 15px;
            }


            nav a {

                margin: 8px;
            }


            .hero h1 {

                font-size: 35px;
            }


            .hero h2 {

                font-size: 20px;
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

        🌾 మన ఊరు

    </div>


    <nav>

        <a href="#home">
            Home
        </a>

        <a href="#about">
            మన ఊరు
        </a>

        <a href="#life">
            Village Life
        </a>

        <a href="#festival">
            Festivals
        </a>

    </nav>


</header>



<!-- Hero Section -->

<section
id="home"
class="hero">


    <h1>
        మన ఊరు 🌾
    </h1>


    <h2>
        Mana Ooru – Mana Samskruthi
    </h2>


    <p>

        ప్రకృతి అందాలతో,
        పచ్చని పొలాలతో,
        మన సంప్రదాయాలతో
        నిండిన అందమైన తెలుగు గ్రామం.

    </p>


    <button
    onclick="welcomeMessage()">

        మన ఊరిని చూడండి 🌾

    </button>


</section>



<!-- About Section -->

<section
class="section"
id="about">


    <h2>

        మన ఊరి అందాలు ❤️

    </h2>


    <p>

        తెలుగు గ్రామ జీవితం అంటే
        పచ్చని పొలాలు,
        ఉదయపు స్వచ్ఛమైన గాలి,
        చెట్ల నీడ,
        కుటుంబ బంధాలు
        మరియు మన సంప్రదాయాలు.

        గ్రామంలో జీవితం
        ప్రకృతికి చాలా దగ్గరగా ఉంటుంది.

    </p>


</section>



<!-- Village Life -->

<section
class="section village-life"
id="life">


    <h2>

        గ్రామీణ జీవితం 🌾

    </h2>



    <div class="cards">


        <!-- Card 1 -->

        <div class="card">


            <img
            src="https://images.unsplash.com/photo-1594489428504-5c0c480a15fd?auto=format&fit=crop&w=600&q=80"
            alt="Agriculture">


            <div class="card-content">


                <h3>

                    🌾 పచ్చని పొలాలు

                </h3>


                <p>

                    రైతుల కష్టంతో
                    పచ్చగా మెరిసే పొలాలు
                    మన గ్రామాల అందాన్ని
                    మరింత పెంచుతాయి.

                </p>


            </div>


        </div>



        <!-- Card 2 -->

        <div class="card">


            <img
            src="https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=600&q=80"
            alt="Village Life">


            <div class="card-content">


                <h3>

                    🏡 సాదాసీదా జీవితం

                </h3>


                <p>

                    గ్రామ జీవితం
                    ప్రశాంతంగా,
                    సంతోషంగా
                    మరియు ప్రకృతికి దగ్గరగా ఉంటుంది.

                </p>


            </div>


        </div>



        <!-- Card 3 -->

        <div class="card">


            <img
            src="https://images.unsplash.com/photo-1600100397608-f0103d4a6c6b?auto=format&fit=crop&w=600&q=80"
            alt="Indian Culture">


            <div class="card-content">


                <h3>

                    🐄 పశువులు

                </h3>


                <p>

                    పశువులు మరియు వ్యవసాయం
                    తెలుగు గ్రామ జీవనంలో
                    ముఖ్యమైన భాగం.

                </p>


            </div>


        </div>


    </div>


</section>



<!-- Festivals -->

<section
class="section festival"
id="festival">


    <h2>

        మన పండుగలు 🎉

    </h2>



    <div class="cards">


        <!-- Sankranti -->

        <div class="card">


            <div class="card-content">


                <h3>

                    🪁 సంక్రాంతి

                </h3>


                <p>

                    రంగవల్లులు,
                    పిండివంటలు,
                    గాలిపటాలు
                    మరియు కుటుంబంతో
                    ఆనందంగా జరుపుకునే పండుగ.

                </p>


            </div>


        </div>



        <!-- Bathukamma -->

        <div class="card">


            <div class="card-content">


                <h3>

                    🌸 బతుకమ్మ

                </h3>


                <p>

                    తెలంగాణ సంస్కృతిని
                    ప్రతిబింబించే
                    అందమైన పూల పండుగ.

                </p>


            </div>


        </div>



        <!-- Ugadi -->

        <div class="card">


            <div class="card-content">


                <h3>

                    🥭 ఉగాది

                </h3>


                <p>

                    తెలుగు కొత్త సంవత్సరం.

                    కొత్త ఆశలు మరియు
                    ఆనందంతో జరుపుకునే
                    ప్రత్యేకమైన రోజు.

                </p>


            </div>


        </div>


    </div>


</section>



<!-- Quote -->

<section
class="quote">


    <h2>

        మన ఊరు ❤️

    </h2>


    <p>

        "పచ్చని పొలాలు...
        స్వచ్ఛమైన గాలి...
        మనుషుల మధ్య ప్రేమ...

        అదే మన తెలుగు గ్రామ జీవితం." 🌾

    </p>


</section>



<!-- Footer -->

<footer>


    <p>

        © 2026 మన ఊరు

        <br><br>

        Made with ❤️ for Telugu Village Life 🌾

    </p>


</footer>



<!-- JavaScript -->

<script>


    function welcomeMessage() {


        alert(

            "మన ఊరికి స్వాగతం! 🌾❤️\nWelcome to our Telugu Village!"

        );


    }


</script>


</body>

</html>
