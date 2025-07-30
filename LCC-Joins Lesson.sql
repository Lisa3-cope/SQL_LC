SELECT
    *
FROM
    PatientStay

SELECT
    *
FROM
    DimHospital

SELECT
    h.Hospital AS Hospitalfromlookup
    ,ps.Hospital AS hospitalofthepatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    ---  PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.hospital
    Dimhospitalbad h LEFT JOIN patientstay ps ON ps.hospital = h.Hospital

SELECT
    *
FROM
    DimHospitalBad


--list patients in pruh

SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps
    JOIN
    DimHospitalBad h ON ps.Hospital = h.Hospital
WHERE
    h.Hospital = 'PRUH'
