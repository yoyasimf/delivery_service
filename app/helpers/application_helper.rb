module ApplicationHelper

  def define_alert(key)
    if key == 'alert'
      capture_haml do
        haml_tag :div, class: "alert alert-danger" do
          yield
        end
      end
    else
      capture_haml do
        haml_tag :div, class: "alert alert-success" do
          yield
        end
      end
    end
  end
end
