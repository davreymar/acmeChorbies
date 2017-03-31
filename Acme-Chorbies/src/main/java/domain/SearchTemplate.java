
package domain;

import java.util.Date;

import enums.GenreEnum;
import enums.KindRelationshipEnum;

public class SearchTemplate extends DomainEntity {

	public SearchTemplate() {
		super();
	}


	private KindRelationshipEnum	kindRelationship;
	private int						age;
	private GenreEnum				genre;
	private String					keyword;
	private Date					lastSearch;


	public KindRelationshipEnum getKindRelationship() {
		return this.kindRelationship;
	}

	public void setKindRelationship(final KindRelationshipEnum kindRelationship) {
		this.kindRelationship = kindRelationship;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(final int age) {
		this.age = age;
	}

	public GenreEnum getGenre() {
		return this.genre;
	}

	public void setGenre(final GenreEnum genre) {
		this.genre = genre;
	}

	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(final String keyword) {
		this.keyword = keyword;
	}

	public Date getLastSearch() {
		return this.lastSearch;
	}

	public void setLastSearch(final Date lastSearch) {
		this.lastSearch = lastSearch;
	}
}
