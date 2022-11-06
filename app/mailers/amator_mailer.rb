class AmatorMailer < ApplicationMailer
  include AbstractController::Callbacks

  attr_accessor :attr_component

  default template_path: 'amator_mailer' # to make sure that your mailer uses the devise views
  default from: Rails.application.secrets.email_provider_username
  default bcc: Rails.application.secrets.email_bcc_username

  after_action :attach_metadata

  def api_pwid_error(model_name, component)
    @attr_component = component

    @component = component

    attachments.inline['logo_mailer'] = File.read("app/assets/images/logo_mailer.png")
    attachments.inline['logo_uke'] = File.read("app/assets/images/logo_uke_pl_do_lewej_small.png")

    # mail(to: @recipient.email, cc: sending_user.email, subject: "#{t('title')} - #{@component_fullname}" )
    mail(to: 'bsorbus@gmail.com', subject: "zulugula" )
  end

  private

    def attach_metadata
      mailer_klass = self.class.to_s
      mailer_action = self.action_name
      mailer_component = @attr_component

      self.message.instance_variable_set(:@mailer_klass, mailer_klass)
      self.message.instance_variable_set(:@mailer_action, mailer_action)
      self.message.instance_variable_set(:@mailer_component, mailer_component)

      self.message.class.send(:attr_reader, :mailer_component)
    end
end


# preview
# http://localhost:3000/rails/mailers/status_mailer/project_status_email.html