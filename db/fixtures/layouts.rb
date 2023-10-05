Layout.seed do |s|
  s.id = 1
  s.user_id = 2
  s.name = "Base"
  s.content = "
  content:
    header:

    center:
      - name: summary
        display_name: Summary
        template: summary
      - name: experience
        display_name: Experience
        template: experiences

    right:
      - display_name:
        template: profile
      - display_name:
        template: contact
      - display_name: Education
        template: education
      - display_name: Skills
        template: skills
      - display_name: Download PDF
        template: download

    footer:
  "
end
