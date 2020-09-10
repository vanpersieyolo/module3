-- 1
-- 2.8: 
-- 2.4

select * from sinhvien
left join detai on detai.noi_thuctap = sinhvien.que_quan
where noi_thuctap is not null;

-- 2.9
select * from sinhvien
join huongdan on huongdan.ma_sv = sinhvien.ma_sv
where huongdan.ketqua is null;


-- 2.10
select sinhvien.ma_sv, sinhvien.hoten_sv from sinhvien
right join huongdan on huongdan.ma_sv = sinhvien.ma_sv
where huongdan.ketqua = 0;