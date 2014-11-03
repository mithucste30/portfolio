class Admin::AdminUsersController < Admin::ResourcesController

#  private
#
#  def redirect_on_success
#    path = params.dup.cleanup
#
#    puts "#{path.inspect}"
#    options = if params[:_addanother]
#      { action: 'new', id: nil }
#    elsif params[:_continue]
#      { action: 'edit', id: @item.id }
#    elsif params[:_save]
#      { action: 'show', id: @item.id }
#    else
#      { action: nil, id: nil }
#    end
#
#    notice = if params[:action].eql?('create')
#      I18n.t('typus.flash.create_success', model: @resource.model_name.human)
#    else
#      I18n.t('typus.flash.update_success', model: @resource.model_name.human)
#    end
#    redirect_to url_for(path.merge!(options).compact), notice: notice
#  end
end
