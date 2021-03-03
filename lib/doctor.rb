class Doctor
attr_reader :name

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|i| i.doctor == self}
  end

  def patients
    self.appointments.map {|i| i.patient}
  end

end