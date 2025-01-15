namespace DatabaseTask.Domain
{
    public class Artwork
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int CreationDate { get; set; }
        public int ArtistID { get; set; }
        public int OwnerID { get; set; }
        public int CategorieID { get; set; }

        public Artist Artist { get; set; }
        public ICollection<Categorie> Categorie { get; set; }
        public ICollection<Owner> Owner { get; set; }
    }
}
