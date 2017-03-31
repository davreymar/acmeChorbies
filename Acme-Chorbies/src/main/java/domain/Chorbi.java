
package domain;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.URL;

import enums.GenreEnum;
import enums.KindRelationshipEnum;

public class Chorbi extends Actor {

	public Chorbi() {
		super();
		this.isBanned = false;
	}


	private String					URL;
	private String					description;
	private KindRelationshipEnum	kingRelationship;
	private Date					birthDate;
	private GenreEnum				genre;
	private boolean					isBanned;


	@URL
	@NotBlank
	public String getURL() {
		return this.URL;
	}

	public void setURL(final String uRL) {
		this.URL = uRL;
	}
	@NotBlank
	public String getDescription() {
		return this.description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}
	@NotNull
	public KindRelationshipEnum getKingRelationship() {
		return this.kingRelationship;
	}

	public void setKingRelationship(final KindRelationshipEnum kingRelationship) {
		this.kingRelationship = kingRelationship;
	}
	@Past
	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(final Date birthDate) {
		this.birthDate = birthDate;
	}
	@NotNull
	public GenreEnum getGenre() {
		return this.genre;
	}

	public void setGenre(final GenreEnum genre) {
		this.genre = genre;
	}
	@NotNull
	public boolean isBanned() {
		return this.isBanned;
	}

	public void setBanned(final boolean isBanned) {
		this.isBanned = isBanned;
	}
}
