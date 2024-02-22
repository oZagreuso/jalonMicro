import { Cpuz } from "./Cpuz.js";
import { CpuzRepository } from "./cpuzRepository.js";


const app = {
    data() {
        return {
            cpuzList: [],
            cpuzItem: ''
        }
    },
    async mounted() {
        await this.loadData();
    },
    methods: {
        async loadData() {
            const apiBaseUrl = 'http://localhost:3000/api';
            const cpuzRepository = new CpuzRepository(apiBaseUrl);

            try {
                const apiData = await cpuzRepository.fetchDataFromApi();
                this.cpuzList = apiData.map(cpuz => new Cpuz(cpuz));
                console.log(this.cpuzList);
            } catch (error) {
                console.error('Erreur lors du chargement des données:', error.message);
            }
        },
        displayCpuzItems() {
            return this.cpuzList.map(cpuz => `
                <div class="cpuz-item">
                    <h2>${cpuz.nomModele}</h2>
                    <p>Marque: ${cpuz.marque}</p>
                    <p>Famille: ${cpuz.nomFamille}</p>
                    <p>Fréquence: ${cpuz.frequenceGhz} Ghz</p>
                    <p>Prix: ${cpuz.prix} €</p>
                    <p>Stock: ${cpuz.stock} </p>
                </div> `);
            
        }
       
    }

}
Vue.createApp(app).mount('#app');
