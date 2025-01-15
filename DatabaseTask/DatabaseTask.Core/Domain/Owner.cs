namespace DatabaseTask.Domain
{
    public class Owner
    {
        public int Id { get; set; }
        public string OwnerName { get; set; }
        public string ContactInfo { get; set; }
        public string Address { get; set; }

        public ICollection<Artwork> Artwork { get; set; }
    }
}
