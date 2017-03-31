
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.SearchTemplateRepository;
import domain.SearchTemplate;

@Service
@Transactional
public class SearchTemplateService {

	@Autowired
	private SearchTemplateRepository	searchTemplateRepository;


	public SearchTemplateService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public SearchTemplate create() {
		SearchTemplate result;

		result = new SearchTemplate();
		return result;
	}

	public Collection<SearchTemplate> findAll() {
		Collection<SearchTemplate> result;

		result = this.searchTemplateRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public SearchTemplate findOne(final int searchTemplateId) {
		SearchTemplate result;

		result = this.searchTemplateRepository.findOne(searchTemplateId);

		return result;
	}

	public SearchTemplate save(final SearchTemplate searchTemplate) {
		Assert.notNull(searchTemplate);

		return this.searchTemplateRepository.save(searchTemplate);
	}

	public void delete(final SearchTemplate searchTemplate) {
		Assert.notNull(searchTemplate);
		Assert.isTrue(searchTemplate.getId() != 0);

		this.searchTemplateRepository.delete(searchTemplate);
	}

}
