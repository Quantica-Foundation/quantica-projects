// unit_converter.qc
// The Mega Quantica Unit Converter

Class UnitConverter:

    func init():
        print("Loading Mega Converter Database...")


    // 1. LENGTH

    func m_to_ft(val: Float) -> Float:
        return val * 3.28084

    func ft_to_m(val: Float) -> Float:
        return val / 3.28084

    func km_to_mi(val: Float) -> Float:
        return val * 0.621371

    func mi_to_km(val: Float) -> Float:
        return val / 0.621371

    func cm_to_in(val: Float) -> Float:
        return val * 0.393701

    func in_to_cm(val: Float) -> Float:
        return val / 0.393701

    func m_to_yd(val: Float) -> Float:
        return val * 1.09361

    func yd_to_m(val: Float) -> Float:
        return val / 1.09361

    func km_to_nmi(val: Float) -> Float:
        return val * 0.539957

    func nmi_to_km(val: Float) -> Float:
        return val / 0.539957


    // 2. MASS / WEIGHT

    func kg_to_lbs(val: Float) -> Float:
        return val * 2.20462

    func lbs_to_kg(val: Float) -> Float:
        return val / 2.20462

    func g_to_oz(val: Float) -> Float:
        return val * 0.035274

    func oz_to_g(val: Float) -> Float:
        return val / 0.035274

    func kg_to_stone(val: Float) -> Float:
        return val * 0.157473

    func stone_to_kg(val: Float) -> Float:
        return val / 0.157473

    func metric_ton_to_kg(val: Float) -> Float:
        return val * 1000.0

    func kg_to_metric_ton(val: Float) -> Float:
        return val / 1000.0

    func lbs_to_oz(val: Float) -> Float:
        return val * 16.0

    func oz_to_lbs(val: Float) -> Float:
        return val / 16.0


    // 3. TEMPERATURE

    func c_to_f(val: Float) -> Float:
        return (val * 9.0/5.0) + 32.0

    func f_to_c(val: Float) -> Float:
        return (val - 32.0) * 5.0/9.0

    func c_to_k(val: Float) -> Float:
        return val + 273.15

    func k_to_c(val: Float) -> Float:
        return val - 273.15

    func f_to_k(val: Float) -> Float:
        return (val - 32.0) * 5.0/9.0 + 273.15

    func k_to_f(val: Float) -> Float:
        return (val - 273.15) * 9.0/5.0 + 32.0


    // 4. TIME

    func sec_to_min(val: Float) -> Float:
        return val / 60.0

    func min_to_sec(val: Float) -> Float:
        return val * 60.0

    func min_to_hr(val: Float) -> Float:
        return val / 60.0

    func hr_to_min(val: Float) -> Float:
        return val * 60.0

    func hr_to_day(val: Float) -> Float:
        return val / 24.0

    func day_to_hr(val: Float) -> Float:
        return val * 24.0

    func day_to_week(val: Float) -> Float:
        return val / 7.0

    func week_to_day(val: Float) -> Float:
        return val * 7.0

    func day_to_year(val: Float) -> Float:
        return val / 365.25

    func year_to_day(val: Float) -> Float:
        return val * 365.25


    // 5. SPEED

    func kph_to_mph(val: Float) -> Float:
        return val * 0.621371

    func mph_to_kph(val: Float) -> Float:
        return val / 0.621371

    func m_s_to_kph(val: Float) -> Float:
        return val * 3.6

    func kph_to_m_s(val: Float) -> Float:
        return val / 3.6

    func knots_to_kph(val: Float) -> Float:
        return val * 1.852

    func kph_to_knots(val: Float) -> Float:
        return val / 1.852

    func mph_to_fps(val: Float) -> Float:
        return val * 1.46667

    func fps_to_mph(val: Float) -> Float:
        return val / 1.46667


    // 6. AREA

    func sqm_to_sqft(val: Float) -> Float:
        return val * 10.7639

    func sqft_to_sqm(val: Float) -> Float:
        return val / 10.7639

    func sqkm_to_sqmi(val: Float) -> Float:
        return val * 0.386102

    func sqmi_to_sqkm(val: Float) -> Float:
        return val / 0.386102

    func acre_to_sqft(val: Float) -> Float:
        return val * 43560.0

    func sqft_to_acre(val: Float) -> Float:
        return val / 43560.0

    func hectare_to_acre(val: Float) -> Float:
        return val * 2.47105

    func acre_to_hectare(val: Float) -> Float:
        return val / 2.47105


    // 7. VOLUME

    func l_to_gal(val: Float) -> Float:
        return val * 0.264172

    func gal_to_l(val: Float) -> Float:
        return val / 0.264172

    func l_to_qt(val: Float) -> Float:
        return val * 1.05669

    func qt_to_l(val: Float) -> Float:
        return val / 1.05669

    func l_to_pt(val: Float) -> Float:
        return val * 2.11338

    func pt_to_l(val: Float) -> Float:
        return val / 2.11338

    func l_to_cup(val: Float) -> Float:
        return val * 4.22675

    func cup_to_l(val: Float) -> Float:
        return val / 4.22675

    func ml_to_floz(val: Float) -> Float:
        return val * 0.033814

    func floz_to_ml(val: Float) -> Float:
        return val / 0.033814


    // 8. DIGITAL STORAGE

    func bit_to_byte(val: Float) -> Float:
        return val / 8.0

    func byte_to_bit(val: Float) -> Float:
        return val * 8.0

    func kb_to_mb(val: Float) -> Float:
        return val / 1024.0

    func mb_to_kb(val: Float) -> Float:
        return val * 1024.0

    func mb_to_gb(val: Float) -> Float:
        return val / 1024.0

    func gb_to_mb(val: Float) -> Float:
        return val * 1024.0

    func gb_to_tb(val: Float) -> Float:
        return val / 1024.0

    func tb_to_gb(val: Float) -> Float:
        return val * 1024.0

    func tb_to_pb(val: Float) -> Float:
        return val / 1024.0

    func pb_to_tb(val: Float) -> Float:
        return val * 1024.0


    // 9. ENERGY

    func j_to_cal(val: Float) -> Float:
        return val * 0.239006

    func cal_to_j(val: Float) -> Float:
        return val / 0.239006

    func j_to_kwh(val: Float) -> Float:
        return val / 3600000.0

    func kwh_to_j(val: Float) -> Float:
        return val * 3600000.0

    func j_to_btu(val: Float) -> Float:
        return val * 0.000947817

    func btu_to_j(val: Float) -> Float:
        return val / 0.000947817

    func ev_to_j(val: Float) -> Float:
        return val * 1.60218e-19

    func j_to_ev(val: Float) -> Float:
        return val / 1.60218e-19


    // 10. PRESSURE

    func bar_to_psi(val: Float) -> Float:
        return val * 14.5038

    func psi_to_bar(val: Float) -> Float:
        return val / 14.5038

    func atm_to_pa(val: Float) -> Float:
        return val * 101325.0

    func pa_to_atm(val: Float) -> Float:
        return val / 101325.0

    func torr_to_pa(val: Float) -> Float:
        return val * 133.322

    func pa_to_torr(val: Float) -> Float:
        return val / 133.322


    // 11. POWER

    func w_to_kw(val: Float) -> Float:
        return val / 1000.0

    func kw_to_w(val: Float) -> Float:
        return val * 1000.0

    func kw_to_hp(val: Float) -> Float:
        return val * 1.34102

    func hp_to_kw(val: Float) -> Float:
        return val / 1.34102


    // 12. ANGLE

    func deg_to_rad(val: Float) -> Float:
        return val * 0.0174533

    func rad_to_deg(val: Float) -> Float:
        return val / 0.0174533

    func deg_to_grad(val: Float) -> Float:
        return val * 1.11111

    func grad_to_deg(val: Float) -> Float:
        return val / 1.11111


    // 13. FUEL CONSUMPTION

    func mpg_to_km_l(val: Float) -> Float:
        return val * 0.425144

    func km_l_to_mpg(val: Float) -> Float:
        return val / 0.425144

    func mpg_to_l_100km(val: Float) -> Float:
        if val == 0.0:
            return 0.0
        return 235.215 / val


// MAIN APPLICATION

print("=========================================")
print("   QUANTICA MEGA CONVERTER (100+ Units)  ")
print("=========================================")

let cvt = new UnitConverter()
mut running = True

while running:
    print("\n[SELECT CATEGORY]")
    print(" 1. Length        2. Mass/Weight")
    print(" 3. Temperature   4. Time")
    print(" 5. Speed         6. Area")
    print(" 7. Volume        8. Digital")
    print(" 9. Energy       10. Pressure")
    print("11. Power        12. Angle")
    print("13. Fuel         14. EXIT")

    let cat = input("Choice (1-14): ")

    // 1. LENGTH
    if cat == "1":
        print("\n--- Length ---")
        print("1. m -> ft      2. ft -> m")
        print("3. km -> mi     4. mi -> km")
        print("5. cm -> in     6. in -> cm")
        print("7. m -> yd      8. yd -> m")
        print("9. km -> nmi   10. nmi -> km")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.m_to_ft(val)) + " ft")
        elif op == "2": print(to_string(cvt.ft_to_m(val)) + " m")
        elif op == "3": print(to_string(cvt.km_to_mi(val)) + " mi")
        elif op == "4": print(to_string(cvt.mi_to_km(val)) + " km")
        elif op == "5": print(to_string(cvt.cm_to_in(val)) + " in")
        elif op == "6": print(to_string(cvt.in_to_cm(val)) + " cm")
        elif op == "7": print(to_string(cvt.m_to_yd(val)) + " yd")
        elif op == "8": print(to_string(cvt.yd_to_m(val)) + " m")
        elif op == "9": print(to_string(cvt.km_to_nmi(val)) + " nmi")
        elif op == "10": print(to_string(cvt.nmi_to_km(val)) + " km")

    // 2. WEIGHT
    elif cat == "2":
        print("\n--- Mass / Weight ---")
        print("1. kg -> lbs    2. lbs -> kg")
        print("3. g -> oz      4. oz -> g")
        print("5. kg -> st     6. st -> kg")
        print("7. t -> kg      8. kg -> t")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.kg_to_lbs(val)) + " lbs")
        elif op == "2": print(to_string(cvt.lbs_to_kg(val)) + " kg")
        elif op == "3": print(to_string(cvt.g_to_oz(val)) + " oz")
        elif op == "4": print(to_string(cvt.oz_to_g(val)) + " g")
        elif op == "5": print(to_string(cvt.kg_to_stone(val)) + " st")
        elif op == "6": print(to_string(cvt.stone_to_kg(val)) + " kg")
        elif op == "7": print(to_string(cvt.metric_ton_to_kg(val)) + " kg")
        elif op == "8": print(to_string(cvt.kg_to_metric_ton(val)) + " t")

    // 3. TEMPERATURE
    elif cat == "3":
        print("\n--- Temperature ---")
        print("1. C -> F       2. F -> C")
        print("3. C -> K       4. K -> C")
        print("5. F -> K       6. K -> F")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.c_to_f(val)) + " F")
        elif op == "2": print(to_string(cvt.f_to_c(val)) + " C")
        elif op == "3": print(to_string(cvt.c_to_k(val)) + " K")
        elif op == "4": print(to_string(cvt.k_to_c(val)) + " C")
        elif op == "5": print(to_string(cvt.f_to_k(val)) + " K")
        elif op == "6": print(to_string(cvt.k_to_f(val)) + " F")

    // 4. TIME
    elif cat == "4":
        print("\n--- Time ---")
        print("1. sec -> min   2. min -> sec")
        print("3. min -> hr    4. hr -> min")
        print("5. hr -> day    6. day -> hr")
        print("7. day -> yr    8. yr -> day")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.sec_to_min(val)) + " min")
        elif op == "2": print(to_string(cvt.min_to_sec(val)) + " sec")
        elif op == "3": print(to_string(cvt.min_to_hr(val)) + " hr")
        elif op == "4": print(to_string(cvt.hr_to_min(val)) + " min")
        elif op == "5": print(to_string(cvt.hr_to_day(val)) + " day")
        elif op == "6": print(to_string(cvt.day_to_hr(val)) + " hr")
        elif op == "7": print(to_string(cvt.day_to_year(val)) + " yr")
        elif op == "8": print(to_string(cvt.year_to_day(val)) + " day")

    // 5. SPEED
    elif cat == "5":
        print("\n--- Speed ---")
        print("1. kph -> mph   2. mph -> kph")
        print("3. m/s -> kph   4. kph -> m/s")
        print("5. kn -> kph    6. kph -> kn")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.kph_to_mph(val)) + " mph")
        elif op == "2": print(to_string(cvt.mph_to_kph(val)) + " kph")
        elif op == "3": print(to_string(cvt.m_s_to_kph(val)) + " kph")
        elif op == "4": print(to_string(cvt.kph_to_m_s(val)) + " m/s")
        elif op == "5": print(to_string(cvt.knots_to_kph(val)) + " kph")
        elif op == "6": print(to_string(cvt.kph_to_knots(val)) + " kn")

    // 6. AREA
    elif cat == "6":
        print("\n--- Area ---")
        print("1. m2 -> ft2    2. ft2 -> m2")
        print("3. km2 -> mi2   4. mi2 -> km2")
        print("5. ac -> ft2    6. ft2 -> ac")
        print("7. ha -> ac     8. ac -> ha")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.sqm_to_sqft(val)) + " ft2")
        elif op == "2": print(to_string(cvt.sqft_to_sqm(val)) + " m2")
        elif op == "3": print(to_string(cvt.sqkm_to_sqmi(val)) + " mi2")
        elif op == "4": print(to_string(cvt.sqmi_to_sqkm(val)) + " km2")
        elif op == "5": print(to_string(cvt.acre_to_sqft(val)) + " ft2")
        elif op == "6": print(to_string(cvt.sqft_to_acre(val)) + " ac")
        elif op == "7": print(to_string(cvt.hectare_to_acre(val)) + " ac")
        elif op == "8": print(to_string(cvt.acre_to_hectare(val)) + " ha")

    // 7. VOLUME
    elif cat == "7":
        print("\n--- Volume ---")
        print("1. L -> gal     2. gal -> L")
        print("3. L -> qt      4. qt -> L")
        print("5. L -> pt      6. pt -> L")
        print("7. L -> cup     8. cup -> L")
        print("9. ml -> fl oz 10. fl oz -> ml")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.l_to_gal(val)) + " gal")
        elif op == "2": print(to_string(cvt.gal_to_l(val)) + " L")
        elif op == "3": print(to_string(cvt.l_to_qt(val)) + " qt")
        elif op == "4": print(to_string(cvt.qt_to_l(val)) + " L")
        elif op == "5": print(to_string(cvt.l_to_pt(val)) + " pt")
        elif op == "6": print(to_string(cvt.pt_to_l(val)) + " L")
        elif op == "7": print(to_string(cvt.l_to_cup(val)) + " cup")
        elif op == "8": print(to_string(cvt.cup_to_l(val)) + " L")
        elif op == "9": print(to_string(cvt.ml_to_floz(val)) + " fl oz")
        elif op == "10": print(to_string(cvt.floz_to_ml(val)) + " ml")

    // 8. DIGITAL STORAGE
    elif cat == "8":
        print("\n--- Digital ---")
        print("1. bit -> byte  2. byte -> bit")
        print("3. KB -> MB     4. MB -> KB")
        print("5. MB -> GB     6. GB -> MB")
        print("7. GB -> TB     8. TB -> GB")
        print("9. TB -> PB    10. PB -> TB")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.bit_to_byte(val)) + " B")
        elif op == "2": print(to_string(cvt.byte_to_bit(val)) + " b")
        elif op == "3": print(to_string(cvt.kb_to_mb(val)) + " MB")
        elif op == "4": print(to_string(cvt.mb_to_kb(val)) + " KB")
        elif op == "5": print(to_string(cvt.mb_to_gb(val)) + " GB")
        elif op == "6": print(to_string(cvt.gb_to_mb(val)) + " MB")
        elif op == "7": print(to_string(cvt.gb_to_tb(val)) + " TB")
        elif op == "8": print(to_string(cvt.tb_to_gb(val)) + " GB")
        elif op == "9": print(to_string(cvt.tb_to_pb(val)) + " PB")
        elif op == "10": print(to_string(cvt.pb_to_tb(val)) + " TB")

    // 9. ENERGY
    elif cat == "9":
        print("\n--- Energy ---")
        print("1. J -> cal     2. cal -> J")
        print("3. J -> kWh     4. kWh -> J")
        print("5. J -> BTU     6. BTU -> J")
        print("7. eV -> J      8. J -> eV")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.j_to_cal(val)) + " cal")
        elif op == "2": print(to_string(cvt.cal_to_j(val)) + " J")
        elif op == "3": print(to_string(cvt.j_to_kwh(val)) + " kWh")
        elif op == "4": print(to_string(cvt.kwh_to_j(val)) + " J")
        elif op == "5": print(to_string(cvt.j_to_btu(val)) + " BTU")
        elif op == "6": print(to_string(cvt.btu_to_j(val)) + " J")
        elif op == "7": print(to_string(cvt.ev_to_j(val)) + " J")
        elif op == "8": print(to_string(cvt.j_to_ev(val)) + " eV")

    // 10. PRESSURE
    elif cat == "10":
        print("\n--- Pressure ---")
        print("1. bar -> psi   2. psi -> bar")
        print("3. atm -> Pa    4. Pa -> atm")
        print("5. Torr -> Pa   6. Pa -> Torr")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.bar_to_psi(val)) + " psi")
        elif op == "2": print(to_string(cvt.psi_to_bar(val)) + " bar")
        elif op == "3": print(to_string(cvt.atm_to_pa(val)) + " Pa")
        elif op == "4": print(to_string(cvt.pa_to_atm(val)) + " atm")
        elif op == "5": print(to_string(cvt.torr_to_pa(val)) + " Pa")
        elif op == "6": print(to_string(cvt.pa_to_torr(val)) + " Torr")

    // 11. POWER
    elif cat == "11":
        print("\n--- Power ---")
        print("1. W -> kW      2. kW -> W")
        print("3. kW -> hp     4. hp -> kW")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.w_to_kw(val)) + " kW")
        elif op == "2": print(to_string(cvt.kw_to_w(val)) + " W")
        elif op == "3": print(to_string(cvt.kw_to_hp(val)) + " hp")
        elif op == "4": print(to_string(cvt.hp_to_kw(val)) + " kW")

    // 12. ANGLE
    elif cat == "12":
        print("\n--- Angle ---")
        print("1. deg -> rad   2. rad -> deg")
        print("3. deg -> grad  4. grad -> deg")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.deg_to_rad(val)) + " rad")
        elif op == "2": print(to_string(cvt.rad_to_deg(val)) + " deg")
        elif op == "3": print(to_string(cvt.deg_to_grad(val)) + " grad")
        elif op == "4": print(to_string(cvt.grad_to_deg(val)) + " deg")

    // 13. FUEL
    elif cat == "13":
        print("\n--- Fuel Consumption ---")
        print("1. mpg -> km/L")
        print("2. km/L -> mpg")
        print("3. mpg -> L/100km")
        let op = input("Op: ")
        let val = to_float(input("Value: "))
        if op == "1": print(to_string(cvt.mpg_to_km_l(val)) + " km/L")
        elif op == "2": print(to_string(cvt.km_l_to_mpg(val)) + " mpg")
        elif op == "3": print(to_string(cvt.mpg_to_l_100km(val)) + " L/100km")

    // 14. EXIT
    elif cat == "14":
        print("Exiting Mega Converter. Goodbye!")
        running = False

    else:
        print("Invalid category.")
