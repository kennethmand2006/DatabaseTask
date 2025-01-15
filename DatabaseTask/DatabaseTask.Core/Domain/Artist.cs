namespace DatabaseTask.Domain
{
    public class Artist
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int BirthYear { get; set; }
        public string Country { get; set; }

        public ICollection<Artwork> Artworks { get; set; }
    }
}
