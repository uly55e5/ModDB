module UniprotsHelper
  
  def uniprot_url(uniprot_ac)
    link_to "Search Uniprot", "http://www.uniprot.org/uniprot/#{uniprot_ac}"
  end
end
