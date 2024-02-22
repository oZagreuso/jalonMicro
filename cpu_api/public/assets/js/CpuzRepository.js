import { Cpuz } from "./Cpuz.js";

class CpuzRepository
{
    
    static apiBaseUrl = 'http://localhost:3000/api';

    async fetchDataFromApi()
    {
        try 
        {
            const response = await fetch(CpuzRepository.apiBaseUrl + '/microprocesseurs');
            const data = await response.json();
            return data;
        }
        catch (error)
        {
            console.error('Erreur récupération données depuis l\'API')
            throw error;
        }
    }
    
}

export { CpuzRepository, Cpuz }