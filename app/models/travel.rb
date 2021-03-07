class Travel < ApplicationRecord
    belongs_to :user
    belongs_to :location
    accepts_nested_attributes_for :location


    # <%= form_tag students_path, method: :get do %>
    #     <%= text_field_tag :query, params[:query] %>
    #     <%= submit_tag "Search", name: nil %>
    #   <% end %>
    #   def self.search(query)
    #     if query.present?
    #       where('NAME like ?', "%#{query}%")
    #     else
    #       self.all
    #     end
    #   end

    #   def index
    #     @students = Student.search(params[:query])
    #     render 'index'
    #   end
end
