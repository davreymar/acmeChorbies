
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.SystemConfigRepository;
import domain.SystemConfig;

@Service
@Transactional
public class SystemConfigService {

	@Autowired
	private SystemConfigRepository	systemConfigRepository;


	public SystemConfigService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public SystemConfig create() {
		SystemConfig result;

		result = new SystemConfig();
		return result;
	}

	public Collection<SystemConfig> findAll() {
		Collection<SystemConfig> result;

		result = this.systemConfigRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public SystemConfig getSystemConfig() {
		SystemConfig result = null;

		for (final SystemConfig s : this.systemConfigRepository.findAll()) {
			result = s;
			break;
		}
		Assert.notNull(result);

		return result;
	}

	public SystemConfig findOne(final int systemConfigId) {
		SystemConfig result;

		result = this.systemConfigRepository.findOne(systemConfigId);

		return result;
	}

	public SystemConfig save(final SystemConfig systemConfig) {
		Assert.notNull(systemConfig);

		return this.systemConfigRepository.save(systemConfig);
	}

	public void delete(final SystemConfig systemConfig) {
		Assert.notNull(systemConfig);
		Assert.isTrue(systemConfig.getId() != 0);

		this.systemConfigRepository.delete(systemConfig);
	}

}
