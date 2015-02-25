module DateHelper
  def updated_in
    format_date self.updated_at
  end

  def published_in
    format_date self.date_publish
  end

  private

  def format_date(dt)
    month = I18n.t("date.month_names")[dt.mon]
    day = dt.mday.to_s
    year = dt.year.to_s

    day << " de " << month << " de " << year
  end
end
