using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project1
{
    class Program
    {
        static void Main(string[] args)
        {
            PoliclinicEDM context = new PoliclinicEDM();
            var Doctors = context.Doctor;
            foreach (var item in Doctors)
            {
                Console.WriteLine(item);
            }
            var MedicalCards = context.MedicalCard.Where(e => e.id > 10);
            Console.WriteLine(MedicalCards);
            foreach (var item in MedicalCards)
            {
                Console.WriteLine(item);
            }
            var MedicalCardsView = context.MedicalCard.Join(context.Doctor,
                card => card.idDoctor,
                doc => doc.id,
                (card, doc) => new
                {
                    card.id,
                    card.idPatient,
                    card.DateOfVisit,
                    Doctor = doc.FirstName + " " + doc.LastName,
                    card.ReaseachProtacol,
                    card.idDiagnosis,
                    card.Conclusion
                }).Join(context.Patient,
                    oldCard => oldCard.idPatient,
                    pacient => pacient.id,
                    (oldCard, pacient) => new
                    {
                        oldCard.id,
                        Pacient = pacient.FirstName + " " + pacient.LastName,
                        PacientAge = pacient.Age,
                        PacientPassport = pacient.Passport + "\n",
                        oldCard.DateOfVisit,
                        oldCard.Doctor,
                        oldCard.ReaseachProtacol,
                        oldCard.idDiagnosis,
                        oldCard.Conclusion
                    }).Join(context.Diagnosis,
                        oldCard => oldCard.idDiagnosis,
                        dia => dia.Id,
                        (oldCard, y) => new
                        {
                            oldCard.id,
                            Pacient = oldCard.Pacient + "\n",
                            oldCard.DateOfVisit,
                            Doctor = oldCard.Doctor + "\n",
                            ReaseachProtacol = oldCard.ReaseachProtacol + "\n",
                            Diagnosis1 = y.Diagnosis1 + "\n",
                            Conclusion = oldCard.Conclusion + "\n"
                        }).Where(e=>e.id >10 && e.id<15);
            Console.WriteLine(MedicalCardsView);
            Console.WriteLine();
            Console.WriteLine();
            foreach (var item in MedicalCardsView)
            {
                Console.WriteLine(item);
            }
            Console.ReadLine();
        }
    }
}
