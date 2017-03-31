
package services;

import javax.transaction.Transactional;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import utilities.AbstractTest;

@ContextConfiguration(locations = {
	"classpath:spring/junit.xml"
})
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
public class SaveMetodoTest extends AbstractTest {
	/*
	 * //ESTA PLANTILLA ES PARA PROBAR METODOS QUE REALIZAN UNA ENTRADA DE UN NUEVO OBJETO A LA BASE DE DATOS
	 * 
	 * @Autowired
	 * private CustomerService customerService;
	 * 
	 * 
	 * //ESTA CLASE ES LA QUE EJECUTA TODAS LAS PRUEBAS PARA UN CASO DE USO AUTOMATICAMENTE, EN ESTE TIPO DE CASOS HAY QUE INTRODUCIR TODOS LOS DATOS DEL OBJETO A CREAR
	 * //CON MODIFICACIONES O ERRORES DELIBERADOS EN LO TESTEADO
	 * 
	 * @Test
	 * public void driver() {
	 * //EN ESTA VARIABLE SE INTRODUCEN LOS DISTINTOS VALORES PARA CADA PRUEBA
	 * //TAMBIEN HAY QUE INTRODUCIR LA EXCEPCION QUE ESPERAMOS(SI NINGUNA ENTONCES NULL)
	 * Object testingData[][] = {
	 * {
	 * "username", "password", "name", "customer@gmail.com", "955321232", null
	 * }, {
	 * "username", "password", "name", "customer@gmail.com", "", null
	 * }, {
	 * "username", "password", "name", "badEmail", "955321232", IllegalArgumentException.class
	 * }, {
	 * "", "password", "name", "badEmail", "955321232", IllegalArgumentException.class
	 * }
	 * //ETC
	 * };
	 * 
	 * for (int i = 0; i < testingData.length; i++) {
	 * //EN ESTA LLAMADA SE MANDAN LOS DATOS AL TEST,PUEDE INTRODUCIRSE CUALQUIER TIPO DE DATO PERO SIEMPRE CON CASTING
	 * template((String) testingData[i][0], (String) testingData[i][1], (String) testingData[i][2], (String) testingData[i][3], (String) testingData[i][4], (Class<?>) testingData[i][5]);
	 * }
	 * }
	 * 
	 * //TEST QUE SE REALIZA
	 * protected void template(String username, String password, String name, String email, String phone, Class<?> expected) {
	 * Class<?> caught;
	 * 
	 * caught = null;
	 * try {
	 * //AQUI SE DEBE INTRODUCIR NUESTRO TEST DE FORMA QUE USE EL METODO DEL SERVICIO CORRESPONDIENTE
	 * UserAccount userAccount = new UserAccount();
	 * userAccount.setUsername(username);
	 * userAccount.setPassword(password);
	 * Authority authority = new Authority();
	 * authority.setAuthority(Authority.CUSTOMER);
	 * userAccount.addAuthority(authority);
	 * 
	 * Customer customer = customerService.create();
	 * customer.setUserAccount(userAccount);
	 * customer.setName(name);
	 * customer.setPhone(phone);
	 * customer.setEmail(email);
	 * 
	 * customerService.save(customer);
	 * } catch (Throwable oops) {
	 * caught = oops.getClass();
	 * }
	 * //COMPROBAR SI NOS HA DADO LA EXCEPCION QUE ESPERABAMOS(NO SE TOCA)
	 * checkExceptions(expected, caught);
	 * }
	 */
}
