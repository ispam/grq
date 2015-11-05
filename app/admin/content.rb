ActiveAdmin.register Content do

permit_params :title, :image, :info

	
	form html: { multipart: true } do |f|
	    f.inputs "Imagen" do
	        #falta buscar como poner más imagenes, si con un modelos para HABTM o OTM.
	        f.input :title, label: 'Título'
	        f.input :image, required: true, as: :file
	        f.input :info, label: 'Información de Contenido'
	        # f.input :products, :as => :select, :collection => Product.pluck(:name, :id) 
	      end
	      f.actions
	  end
		
	index do 
		column "id", :id
		column "Actualizada", :updated_at
		column "Tipo de Imagen", :image_content_type
		column "Tamaño", :image_size do |size|
			number_to_human_size(size.image_size, precision: 2, separator: ',')
	    end
		actions name: "Acciones"
	    
	  end  

	   controller do
      def create
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end

      def update
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end
    end

    menu label: "Contenido Página Inicial"


end
