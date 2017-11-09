module ApplicationHelper
  def salute

    name = current_user.name.split(" ").first

    case Time.now.hour

      when 6..12
        "Bom dia, #{name}!"
      when 12
        "Já almoçou, #{name}?"
      when 13..17
        "Boa tarde, #{name}!"
      when 18..24
        "Boa noite, #{name}!"
      when 1..5
        "Boa madrugada, #{name}!"
    end
  end

  def relative_date(date)

    date = date.to_date

    if date.nil?
      "Sem data"
    elsif date == Time.current.to_date
      "Hoje"
    elsif date == Date.yesterday
      "Ontem"
    elsif date == Date.tomorrow
      "Amanhã"
    elsif date && (date > Time.current.to_date - 7.days) && (date < Date.yesterday)
      l(date, format: '%A')
    else
      if date.year == Date.today.year
        l(date, format: '%-d de %B')
      else
        l(date, format: '%-d de %B de %Y')
      end
    end

  end

end
