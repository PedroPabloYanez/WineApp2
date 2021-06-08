class Oenologist < ApplicationRecord
    has_many :magazine_oenologists
    has_many :magazines, through: :magazine_oenologists, dependent: :destroy
    has_many :jobtitles, through: :magazine_oenologists, dependent: :destroy
    has_many :wine_oenologists, dependent: :destroy
    has_many :wines, through: :wine_strains, dependent: :destroy

    

    def magazine_name
        magazines.map do |magazine_info|
            magazine_info.name
        end.join(', ')
    end

    def jobtitle_name
        jobtitles.map do |jobtitle_info|
            jobtitle_info.name
        end.join(', ')
    end

end
