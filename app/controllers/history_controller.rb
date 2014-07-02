	def create
		history = History.create(sakjhfkshafk_params)
	end

	def new
		@author = Author.new
	end

	def edit
		@author = Author.find params[:id]
	end

	def show
		@author = Author.find params[:id]
	end

	def update
		author = Author.find params[:id]
		author.update author_params
		redirect_to author_path
	end

	def destroy
		author = Author.find params[:id]
		author.destroy
		redirect_to authors_path
	end