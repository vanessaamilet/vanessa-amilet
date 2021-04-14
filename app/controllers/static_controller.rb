class StaticController < ApplicationController

	# def show
	# 	render "/portfolio/#{params[:first]}/#{params[:second]}"
	# end

	def index
		# very simple code to grab all posts so they can be
		# displayed in the Index view (index.html.slim)
		@page_title = 'Web & Graphic Design Services in Houston, TX'
		@page_description = 'Portfolio of Vanessa Amilet, a freelance web designer & developer based in Houston, providing custom web and graphic design services to businesses nationwide.'
		@page_keywords = 'web design services, responsive web design, houston web design, wordpress web design, vanessa amilet, vanessaamilet, amilet, freelance web designer, freelance developer'
	end
	
	def about
		@page_title = 'About'
		@page_description = 'Vanessa Amilet is a Houston freelance web designer & developer helping businesses and organizations in different industries.'
		@page_keywords = 'web design services, responsive web design, houston web design, wordpress web design, wordpress themes, vanessa amilet, #vanessaamilet, freelance web designer, freelance developer'
	end

	def services
		@page_title = 'Web Design Services in Houston, TX'
		@page_description = 'Vanessa Amilet Santos is a freelance designer in Houston, TX who specializes in custom web design, WordPress development, and graphic design.'
		@page_keywords = 'web design services, responsive web design, houston web design, wordpress web design, vanessa amilet, vanessaamilet, amilet, freelance web designer, freelance developer'
	end

	def contact
		@page_title = 'Contact Vanessa Amilet'
	end
	
	def portfolio
		@page_title = 'Portfolio'
		@page_description = 'Results of experience helping businesses with their web presence. View my design portfolio, experience and other resources.'
		@page_keywords = 'web design services, responsive web design, houston web design, wordpress web design, vanessa amilet, vanessaamilet, amilet, freelance web designer, freelance developer'
	end

	# def portfolio_ecmg
	# end

	# def portfolio_apg
	# 	@page_title = "APG"
	# end
	

	def portfolio_greenwood
	end

	def portfolio_cia
	end

	def portfolio_reliantsecurity
	end
	
	def faqs
		@page_title = 'Frequently Asked Questions'
		@page_description = 'Find answers and general information quickly about my work and services.'
	end

	def privacy_policy
		@page_title = 'Privacy Policy'
	end

	def terms
		@page_title = 'Terms & Conditions'
	end
	

end
