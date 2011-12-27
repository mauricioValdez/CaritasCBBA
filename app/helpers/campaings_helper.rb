module CampaingsHelper
  def add_photo(form_builder)
    link_to_function "Agregar Foto", :id  => "add_photo" do |page|
      form_builder.fields_for :campaing_photos, CampaingPhoto.new, :child_index => 'NEW_RECORD' do |photo_form|
        html = render(:partial => 'campaing_photo', :locals => { :f => photo_form })
        page << "$('add_photo').insert({ before: '#{escape_javascript(html)}'.replace(/NEW_RECORD/g, new Date().getTime()) });"
      end
    end
  end

  def delete_photo(form_builder)
    if form_builder.object.new_record?
      link_to_function("Remover esta foto", "this.up('fieldset').remove()")
    else
      form_builder.hidden_field(:_delete) +
      link_to_function("Remover esta photo", "this.up('fieldset').hide(); $(this).previous().value = '1'")
    end
  end
end
