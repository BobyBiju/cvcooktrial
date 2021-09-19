class Owner {
  String imageUrl;
  String ownerName;
  String website;
  String projects;
  String employment;
  String ownerDescription;

  Owner({
    this.projects,
    this.website,
    this.employment,
    this.imageUrl,
    this.ownerDescription,
    this.ownerName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) =>
      Owner(
        imageUrl: json["avatar_url"],
        ownerName: json["name"],
        website: json["blog"],
        projects: json["public_repos"],
        employment: json["company"],
        ownerDescription: json["bio"],

      );
}
