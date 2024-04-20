<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <link rel="icon" href=
"https://cdn.logojoy.com/wp-content/uploads/2018/08/23143920/9-5.png"
          type="image/x-icon">
<!--       tailwind config -->
  <script src="https://cdn.tailwindcss.com"></script>
   <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
	  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            clifford: '#da373d',
          }
        }
      }
    }
  </script>

</head>
<body>

<%@include file="Navbar.jsp" %>
<!-- header
head
about
gallery
pricing
contact
foooter -->

<!-- Hero -->
<!-- component -->
<div class=" bg-gray-50 flex items-center">
	<section class="bg-cover bg-center py-32 w-full h-screen" style="background-image: url('https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
		<div class="container mx-auto text-left text-white">
			<div class="flex items-center pt-48">
				<div class="w-1/2">
					<h1 class="text-5xl font-medium mb-6">Welcome to Eventbite</h1>
					<p class="text-xl mb-12">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra
						euismod odio, gravida pellentesque urna varius vitae.</p>
					<a href="#" class="w-full text-white bg-primary-600 hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-pink-600 dark:hover:bg-pink-700 dark:focus:ring-primary-800">Demo</a>
				</div>
				<div class="w-1/2 pl-16">
					<img src="https://images.unsplash.com/photo-1566737236500-c8ac43014a67?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="h-64 w-full object-cover rounded-xl" alt="Layout Image">
      </div>
				</div>
			</div>
	</section>
</div>
	
	<!-- about -->

<!-- component -->
<div class="py-16 bg-neutral-200"> 
 
  <div class="container m-auto px-6 text-gray-600 md:px-12 xl:px-6">
   <h1 class="mb-4  text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">About</h1>
  
      <div class="space-y-6 md:space-y-0 md:flex md:gap-6 lg:items-center lg:gap-12">
        <div class="md:5/12 lg:w-5/12">
          <img src="https://tailus.io/sources/blocks/left-image/preview/images/startup.png" alt="image" loading="lazy" width="" height="">
        </div>
        <div class="md:7/12 lg:w-6/12">
          <h2 class="text-2xl text-gray-900 font-bold md:text-4xl">Eventbite development is carried out by passionate developers</h2>
          <p class="mt-6 text-gray-600">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum omnis voluptatem accusantium nemo perspiciatis delectus atque autem! Voluptatum tenetur beatae unde aperiam, repellat expedita consequatur! Officiis id consequatur atque doloremque!</p>
          <p class="mt-4 text-gray-600"> Nobis minus voluptatibus pariatur dignissimos libero quaerat iure expedita at? Asperiores nemo possimus nesciunt dicta veniam aspernatur quam mollitia.</p>
        </div>
      </div>
  </div>
</div>
	
	
	<!-- events -->
	

<!-- component -->
<section class="container m-auto px-6 text-gray-600 md:px-12 xl:px-6 pt-14 pb-24">
      <h1 class="mb-4  text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">Events</h1>

<script defer src="https://unpkg.com/alpinejs@3.2.3/dist/cdn.min.js"></script>

<article x-data="slider" class="relative w-full flex flex-shrink-0 overflow-hidden shadow-2xl">
    <div class="rounded-full bg-gray-600 text-white absolute top-5 right-5 text-sm px-2 text-center z-10">
        <span x-text="currentIndex"></span>/
        <span x-text="images.length"></span>
    </div>

    <template x-for="(image, index) in images">
        <figure class="h-96" x-show="currentIndex == index + 1" x-transition:enter="transition transform duration-300"
        x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100"
        x-transition:leave="transition transform duration-300" x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0">
        <img :src="image" alt="Image" class="absolute inset-0 z-10 h-full w-full object-cover opacity-70" onclick="window.location.href = 'http://localhost:8080/Event/Categories.jsp';" />
        <figcaption class="absolute inset-x-0 bottom-1 z-20 w-96 mx-auto p-4 font-light text-sm text-center tracking-widest leading-snug bg-gray-300 bg-opacity-25">
            Any kind of content here!
            Primum in nostrane potestate est, quid meminerimus? Nulla erit controversia. Vestri haec verecundius, illi fortasse constantius. 
        </figcaption>
        </figure>
    </template>

    <button @click="back()"
        class="absolute left-14 top-1/2 -translate-y-1/2 w-11 h-11 flex justify-center items-center rounded-full shadow-md z-10 bg-gray-100 hover:bg-gray-200">
        <svg class=" w-8 h-8 font-bold transition duration-500 ease-in-out transform motion-reduce:transform-none text-gray-500 hover:text-gray-600 hover:-translate-x-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M15 19l-7-7 7-7">
            </path>
        </svg>
    </button>

    <button @click="next()"
    class="absolute right-14 top-1/2 translate-y-1/2 w-11 h-11 flex justify-center items-center rounded-full shadow-md z-10 bg-gray-100 hover:bg-gray-200">
        <svg class=" w-8 h-8 font-bold transition duration-500 ease-in-out transform motion-reduce:transform-none text-gray-500 hover:text-gray-600 hover:translate-x-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"
        xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M9 5l7 7-7 7"></path>
        </svg>
    </button>
</article>

<script>
    document.addEventListener('alpine:init', () => {
        Alpine.data('slider', () => ({
            currentIndex: 1,
            images: [
                'https://www.cvent.com/sites/default/files/styles/column_content_width/public/image/2020-08/Cvent-Corporate-event.jpg?itok=vIU4Hl5c',
                'https://www.bca.co.id/-/media/Feature/News/Edukatips/2022/09/20220912-tips-nonton-konser-pertama-kali-banner.jpg',
                'https://m.media-amazon.com/images/I/8177jeRrK9L._AC_UF1000,1000_QL80_.jpg',
                'https://media.wcnc.com/assets/WCNC/images/e52781aa-6a78-49be-81f7-e366b3d89f7b/e52781aa-6a78-49be-81f7-e366b3d89f7b_1140x641.jpeg',
                'data:image/jpeg;base64,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'
            ],
            back() {
                if (this.currentIndex > 1) {
                    this.currentIndex = this.currentIndex - 1;
                }
            },
            next() {
                if (this.currentIndex < this.images.length) {
                    this.currentIndex = this.currentIndex + 1;
                } else if (this.currentIndex <= this.images.length){
                    this.currentIndex = this.images.length - this.currentIndex + 1
                }
            },
        }))
    })
</script>
</section>
	<!-- gallery -->
	<section>
<div class="container mx-auto p-4">
   <h1 class="mb-4  text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">Gallery</h1>

      <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
        <div class="grid gap-4">
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://upload.wikimedia.org/wikipedia/commons/0/03/Kashi_Vishwanath_Temple_Banaras.jpg"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://pbs.twimg.com/media/FGRnUzPVEAAbqM8?format=jpg&name=large"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://pbs.twimg.com/media/FGRnNpAVUAYqRYv?format=jpg&name=large"
              alt=""
            />
          </div>
        </div>
        <div class="grid gap-4">
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://pbs.twimg.com/media/FGRnP_TUUAAttG3?format=jpg&name=large"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://i.pinimg.com/originals/c0/7d/17/c07d17d7ca0b9f39f5aded4b6dca8f02.jpg"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Benares-_The_Golden_Temple%2C_India%2C_ca._1915_%28IMP-CSCNWW33-OS14-66%29.jpg/1280px-Benares-_The_Golden_Temple%2C_India%2C_ca._1915_%28IMP-CSCNWW33-OS14-66%29.jpg"
              alt=""
            />
          </div>
        </div>
        <div class="grid gap-4">
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://www.jagranimages.com/images/newimg/27072020/27_07_2020-shri-kashi-vishwanath-temple_20557350.jpg"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://www.jansatta.com/wp-content/uploads/2021/12/Kashi-Vishwanath-Mandir.png?w=1024"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://staticimg.amarujala.com/assets/images/2021/11/07/750x506/kashi-vishwanath-dham_1636258507.jpeg?w=674&dpr=1.0"
              alt=""
            />
          </div>
        </div>
        <div class="grid gap-4">
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://staticimg.amarujala.com/assets/images/2020/01/13/750x506/kashi-vishwanath-mandir-varanasi_1578924152.png?w=700&dpr=2.0"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Ahilya_Ghat_by_the_Ganges%2C_Varanasi.jpg/800px-Ahilya_Ghat_by_the_Ganges%2C_Varanasi.jpg"
              alt=""
            />
          </div>
          <div>
            <img
              class="h-auto max-w-full rounded-lg"
              src="https://upload.wikimedia.org/wikipedia/commons/2/25/Chet_Singh_Ghat_in_Varanasi.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>
    </section>
	

<!-- Benefits -->

<!-- Priing -->
<!-- component -->
<section class="container mx-auto px-12 py-28 "> 
      <h1 class="mb-4  text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">Pricing</h1>

  <div class="container max-w-full mx-auto py-12 px-6">

    <p class="text-center text-lg text-gray-700 mt-2 px-6">
      Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.
    </p>
    <div class="h-1 mx-auto bg-indigo-200 w-24 opacity-75 mt-4 rounded"></div>

    <div class="max-w-full md:max-w-6xl mx-auto my-3 md:px-8">
      <div class="relative block flex flex-col md:flex-row items-center">
        <div class="w-11/12 max-w-sm sm:w-3/5 lg:w-1/3 sm:my-5 my-8 relative z-0 rounded-lg shadow-lg md:-mr-4">
          <div class="bg-white text-black rounded-lg shadow-inner shadow-lg overflow-hidden">
            <div class="block text-left text-sm sm:text-md max-w-sm mx-auto mt-2 text-black px-8 lg:px-6">
              <h1 class="text-lg font-medium uppercase p-3 pb-0 text-center tracking-wide">
                Hobby
              </h1>
              <h2 class="text-sm text-gray-500 text-center pb-6">FREE</h2>

              Stripe offers everything needed to run an online business at scale. Get in touch for details.
            </div>

            <div class="flex flex-wrap mt-3 px-6">
              <ul>
                <li class="flex items-center">
                  <div class=" rounded-full p-2 fill-current text-green-700">
                    <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<path
			d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
			></path>
			<polyline
			points="22 4 12 14.01 9 11.01"
			></polyline>
		</svg>
                  </div>
                  <span class="text-gray-700 text-lg ml-3">No setup</span
	>
</li>
<li class="flex items-center">
	<div
	class=" rounded-full p-2 fill-current text-green-700"
	>
	<svg
	class="w-6 h-6 align-middle"
	width="24"
	height="24"
	viewBox="0 0 24 24"
	fill="none"
	stroke="currentColor"
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	>
	<path
	d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
	></path>
	<polyline
	points="22 4 12 14.01 9 11.01"
	></polyline>
</svg>
</div>
<span class="text-gray-700 text-lg ml-3"
>No setups</span
>
                </li>
                <li class="flex items-center">
                  <div class=" rounded-full p-2 fill-current text-green-700">
                    <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
	<path
	d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
	></path>
	<polyline
	points="22 4 12 14.01 9 11.01"
	></polyline>
</svg>
                  </div>
                  <span class="text-gray-700 text-lg ml-3">Speed</span>
                </li>
              </ul>
            </div>
            <div class="block flex items-center p-8  uppercase">
              <button class="mt-3 text-lg font-semibold 
	bg-black w-full text-white rounded-lg 
	px-6 py-3 block shadow-xl hover:bg-gray-700">
	Select
</button>
            </div>
          </div>
        </div>
        <div class="w-full max-w-md sm:w-2/3 lg:w-1/3 sm:my-5 my-8 relative z-10 bg-white rounded-lg shadow-lg">
          <div class="text-sm leading-none rounded-t-lg bg-gray-200 text-black font-semibold uppercase py-4 text-center tracking-wide">
            Most Popular
          </div>
          <div class="block text-left text-sm sm:text-md max-w-sm mx-auto mt-2 text-black px-8 lg:px-6">
            <h1 class="text-lg font-medium uppercase p-3 pb-0 text-center tracking-wide">
              Expert
            </h1>
            <h2 class="text-sm text-gray-500 text-center pb-6"><span class="text-3xl">19</span> /mo</h2>

            Stripe offers everything needed to run an online business at scale. Get in touch for details.
          </div>
          <div class="flex pl-12 justify-start sm:justify-start mt-3">
            <ul>
              <li class="flex items-center">
                <div class="rounded-full p-2 fill-current text-green-700">
                  <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
			<polyline points="22 4 12 14.01 9 11.01"></polyline>
		</svg>
                </div>
                <span class="text-gray-700 text-lg ml-3">No setup</span>
              </li>
              <li class="flex items-center">
                <div class=" rounded-full p-2 fill-current text-green-700">
                  <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
	<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
	<polyline points="22 4 12 14.01 9 11.01"></polyline>
</svg>
                </div>
                <span class="text-gray-700 text-lg ml-3">Hidden fees</span
>
              </li>
              <li class="flex items-center">
                <div class=" rounded-full p-2 fill-current text-green-700">
                  <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
	<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
	<polyline points="22 4 12 14.01 9 11.01"></polyline>
</svg>
                </div>
                <span class="text-gray-700 text-lg ml-3">Original</span>
              </li>
            </ul>
          </div>

          <div class="block flex items-center p-8  uppercase">
            <button class="mt-3 text-lg font-semibold 
	bg-black w-full text-white rounded-lg 
	px-6 py-3 block shadow-xl hover:bg-gray-700">
	Select
</button>
          </div>
        </div>
        <div class="w-11/12 max-w-sm sm:w-3/5 lg:w-1/3 sm:my-5 my-8 relative z-0 rounded-lg shadow-lg md:-ml-4">
          <div class="bg-white text-black rounded-lg shadow-inner shadow-lg overflow-hidden">
            <div class="block text-left text-sm sm:text-md max-w-sm mx-auto mt-2 text-black px-8 lg:px-6">
              <h1 class="text-lg font-medium uppercase p-3 pb-0 text-center tracking-wide">
                Enterprise
              </h1>
              <h2 class="text-sm text-gray-500 text-center pb-6">€39 /mo</h2>

              Stripe offers everything needed to run an online business at scale. Get in touch for details.
            </div>
            <div class="flex flex-wrap mt-3 px-6">
              <ul>
                <li class="flex items-center">
                  <div class=" rounded-full p-2 fill-current text-green-700">
                    <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<path
			d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
			></path>
			<polyline
			points="22 4 12 14.01 9 11.01"
			></polyline>
		</svg>
                  </div>
                  <span class="text-gray-700 text-lg ml-3">Electric</span
	>
</li>
<li class="flex items-center">
	<div
	class=" rounded-full p-2 fill-current text-green-700"
	>
	<svg
	class="w-6 h-6 align-middle"
	width="24"
	height="24"
	viewBox="0 0 24 24"
	fill="none"
	stroke="currentColor"
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	>
	<path
	d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
	></path>
	<polyline
	points="22 4 12 14.01 9 11.01"
	></polyline>
</svg>
</div>
<span class="text-gray-700 text-lg ml-3"
>Monthly</span
>
                </li>
                <li class="flex items-center">
                  <div class=" rounded-full p-2 fill-current text-green-700">
                    <svg class="w-6 h-6 align-middle" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
	<path
	d="M22 11.08V12a10 10 0 1 1-5.93-9.14"
	></path>
	<polyline
	points="22 4 12 14.01 9 11.01"
	></polyline>
</svg>
                  </div>
                  <span class="text-gray-700 text-lg ml-3">No setup</span
>
                </li>
              </ul>
            </div>

            <div class="block flex items-center p-8  uppercase">
              <button class="mt-3 text-lg font-semibold 
	bg-black w-full text-white rounded-lg 
	px-6 py-3 block shadow-xl hover:bg-gray-700">
	Select
</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Testimony -->
<section>
	<section class="container mx-auto px-12 py-28">
   <h1 class="mb-4 mb-5 text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">Hear Our Customers</h1>

  <div class="flex flex-col space-y-6 md:flex-row md:space-y-0">
    <div
      class="flex w-full flex-col justify-between rounded-lg bg-white py-8 px-6 text-center text-slate-800 shadow-lg shadow-slate-200 transition dark:bg-slate-800 dark:shadow-slate-800"
    >
      <div class="w-full text-center text-sm">
        <img
          alt="Hanging out with friends"
          class="mx-auto mb-8 h-20 w-20"
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdyiHab_eVl7Ml4GqmmQuEtlScLnwLs09ojQ&usqp=CAU"
        />
        <p class="mb-6 leading-relaxed text-slate-500 dark:text-slate-400">
          They helped me to quickly and easily compare my options, and I was
          able to secure the financing I needed to grow my business.
        </p>
        <div class="font-semibold text-slate-600">John Doe</div>
        <div class="text-xs text-slate-400">Crispy Creamy Crepes</div>
      </div>
    </div>
    <div
      class="z-10 flex w-full flex-col justify-between rounded-lg bg-white py-8 px-6 text-center text-slate-800 shadow-lg shadow-slate-200 transition dark:bg-slate-800 dark:shadow-slate-800 md:scale-y-110 md:scale-x-110"
    >
      <div class="w-full text-center text-sm">
        <img
          alt="Hanging out with friends"
          class="mx-auto mb-8 h-20 w-20"
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6aoD7KM6-2fo47K55Gd4AjE4TtgeqT35FA&usqp=CAU"
        />
        <p class="mb-6 leading-relaxed text-slate-500 dark:text-slate-400">
          This team was knowledgeable and helpful, walking me through the
          process and finding a financing solution that fit my business
          perfectly.
        </p>
        <div class="font-semibold text-slate-600">Peter Smith</div>
        <div class="text-xs text-slate-400">Chick Chicken</div>
      </div>
    </div>
    <div
      class="flex w-full flex-col justify-between rounded-lg bg-white py-8 px-6 text-center text-slate-800 shadow-lg shadow-slate-200 transition dark:bg-slate-800 dark:shadow-slate-800"
    >
      <div class="w-full text-center text-sm">
        <img
          alt="Hanging out with friends"
          class="mx-auto mb-8 h-20 w-20"
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM2cddfaDotul2O_vUNtj-f9rs_koYhfcPTg&usqp=CAU"
        />
        <p class="mb-6 leading-relaxed text-slate-500 dark:text-slate-400">
          Thanks to their guidance, I was able to secure the financing I needed
          to get my business off the ground.
        </p>
        <div class="font-semibold text-slate-600">Jane Brown</div>
        <div class="text-xs text-slate-400">Pizzy Pizza</div>
      </div>
    </div>
  </div>
</section>

<!-- Contact -->
<div class=" bg-gray-800 py-6 flex flex-col justify-center sm:py-12">
    <div class="relative py-3 sm:max-w-xl sm:mx-auto">
        <div
            class="absolute inset-0 bg-gradient-to-r from-pink-700 to-purple-500 shadow-lg transform -skew-y-6 sm:skew-y-0 sm:-rotate-6 sm:rounded-3xl">
        </div>
        <div class="text-white relative px-4 py-10 bg-indigo-400 shadow-lg sm:rounded-3xl sm:p-20">

            <div class="text-center pb-6">
                <h1 class="text-3xl">Contact Us!</h1>

                <p class="text-gray-300">
                    Fill up the form below to send us a message.
                </p>
            </div>

            <form>

                <input
                        class="shadow mb-4 appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="text" placeholder="Name" name="name">

                <input
                        class="shadow mb-4 appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="email" placeholder="Email" name="email">

                <input
                        class="shadow mb-4 appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="text" placeholder="Subject" name="_subject">

                <textarea
                        class="shadow mb-4 min-h-0 appearance-none border rounded h-64 w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="text" placeholder="Type your message here..." name="message" style="height: 121px;"></textarea>

                <div class="flex justify-between">
                    <input
                        class="shadow bg-pink-600 hover:bg-pink-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit" value="Send">
                    <input
                        class="shadow bg-slate-600 hover:bg-slate-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="reset">
                </div>

            </form>
        </div>
    </div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>