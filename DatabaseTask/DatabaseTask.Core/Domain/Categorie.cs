namespace DatabaseTask.Domain
{
    public class Categorie
    {
        public int Id { get; set; }
        public string CategoryName { get; set; }

        public ICollection<Artwork> Artwork { get; set; }
    }
}
