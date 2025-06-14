 private void LoadThongKe()
 {
     using var db = new QlbenhNhanContext();
     var result = db.BenhNhans
         .Include(bn => bn.MakhoaNavigation)
         .GroupBy(bn => new { bn.Makhoa, bn.MakhoaNavigation.Tenkhoa })
         .Select(g => new
         {
             Makhoa = g.Key.Makhoa,
             Tenkhoa = g.Key.Tenkhoa,
             TongVienPhi = g.Sum(x => (x.SongayNv ?? 0) * 60000)
         }).ToList();

     dgThongke.ItemsSource = result;
 }
