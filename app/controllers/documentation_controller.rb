class DocumentationController < ApplicationController
  
  def index    
    @documents_by_department = {}
    Document.active.includes(:department).each do |doc|      
      @documents_by_department[doc.department] ||= []
      @documents_by_department[doc.department] << doc      
    end
  end

end
