using System;
using System.Collections.Generic;

namespace MNHospital_WPF.Models;

public partial class Bacsi
{
    public int Id { get; set; }

    public string? Username { get; set; }

    public string? Name { get; set; }

    public bool Gender { get; set; }

    public int? Khoa { get; set; }

    public virtual ICollection<Ketqua> Ketquas { get; set; } = new List<Ketqua>();

    public virtual Khoakham? KhoaNavigation { get; set; }

    public virtual Account? UsernameNavigation { get; set; }
}
