module StudentsHelper

  def short_bio student
    bio = student.bio
    if @read_more.to_i == student.id
      bio
    else
      truncate student.bio, length: 30, omission: "..."
    end
  end
end
