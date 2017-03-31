
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.BannerRepository;
import domain.Banner;

@Service
@Transactional
public class BannerService {

	@Autowired
	private BannerRepository	bannerRepository;


	public BannerService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public Banner create() {
		Banner result;

		result = new Banner();
		return result;
	}

	public Collection<Banner> findAll() {
		Collection<Banner> result;

		result = this.bannerRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public Banner findOne(final int bannerId) {
		Banner result;

		result = this.bannerRepository.findOne(bannerId);

		return result;
	}

	public Banner save(final Banner banner) {
		Assert.notNull(banner);

		return this.bannerRepository.save(banner);
	}

	public void delete(final Banner banner) {
		Assert.notNull(banner);
		Assert.isTrue(banner.getId() != 0);

		this.bannerRepository.delete(banner);
	}

}
