module DoseHelper
  def display_dose_unit(dose)
    if dose.unit == '' || dose.unit.nil?
      "-"
    else
      dose.unit
    end
  end
end
