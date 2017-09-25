FactoryGirl.define do
  factory :dv_s39, class: Clinic do
    name 'Doctor vet'
    sites ['www.dv.by', 'www.doctorvet.by', 'www.apteka.by', 'www.animal-id.by', 'www.animal.by']
    about 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In turpis 
      ligula, commodo ultrices metus sit amet, varius faucibus mauris. Phasellus 
      vehicula urna lectus, vitae egestas erat ullamcorper non. Donec rhoncus 
      nec odio eleifend tincidunt. Aenean pharetra ut ante pretium laoreet. 
      Vestibulum lobortis lobortis diam, id auctor est blandit ut. Pellentesque 
      ornare erat ut ante viverra, vitae fermentum odio dignissim. Mauris 
      consectetur dictum augue non viverra.'
    chip true
  end
  factory :dv_p9, class: Clinic do
    name 'Doctor vet'
    sites ['www.dv.by', 'www.doctorvet.by', 'www.apteka.by', 'www.animal-id.by', 'www.animal.by']
    about 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In turpis 
      ligula, commodo ultrices metus sit amet, varius faucibus mauris. Phasellus 
      vehicula urna lectus, vitae egestas erat ullamcorper non. Donec rhoncus 
      nec odio eleifend tincidunt. Aenean pharetra ut ante pretium laoreet. 
      Vestibulum lobortis lobortis diam, id auctor est blandit ut. Pellentesque 
      ornare erat ut ante viverra, vitae fermentum odio dignissim. Mauris 
      consectetur dictum augue non viverra.'
    chip true
  end 
end
