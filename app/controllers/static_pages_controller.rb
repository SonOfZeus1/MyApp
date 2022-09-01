class StaticPagesController < ApplicationController
  def contact
    respond_to do |format|
      format.html { render :contact, locals: { feedback: {} } }
    end
  end

  def leave_feedback
    required = [:name, :email, :reply, :feedback_type, :message]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end
    if form_complete
      flash.now[:success] = "Thank you for your feedback!"
    else
      form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
    end
    respond_to do |format|
      format.html { render :contact, locals: { status_msg: form_status_msg, feedback: params } }
    end
  end


end
