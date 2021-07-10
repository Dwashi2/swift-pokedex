//
//  ViewController.swift
//  pokedex
//
//  Created by Daniel Washington Ignacio on 09/07/21.
//

import UIKit

class ViewController: UIViewController {

    var arrayPokemon: [pokemon] = []
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
        let pokemon1 = pokemon(name: "Bulbassaur", number: 001, info: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.", heigth: 0.7, weigth: 6.9, category: "Seed", habilities: "Overgrow", gender: ["Male","Female"], type: ["Grass","Poison"], weakness: ["Fire","Psychic","Flying","Ice"], evolution: ["Ivysayr","Vanusaur"], avatar: "bulbasaur", color: "48D0B0", green: 0.82,red: 0.28,blue: 0.69, detailGreen: 0.95, detailRed: 0.85, detailBlue: 0.91)
        
        let pokemon2 = pokemon(name: "Ivysaur", number: 002, info: "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.", heigth: 1.0, weigth: 13.0, category: "Seed", habilities: "Overgrow", gender: ["Male","Female"], type: ["Grass","Poison"], weakness: ["Fire","Psychic","Flying","Ice"], evolution: ["Vanusaur"], avatar: "ivysaur", color: "48D0B0", green: 0.82,red: 0.28,blue: 0.69, detailGreen: 0.95, detailRed: 0.85, detailBlue: 0.91)
        
        let pokemon3 = pokemon(name: "Venusaur", number: 003, info: "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.", heigth: 2.0, weigth: 100.0, category: "Seed", habilities: "Overgrow", gender: ["Male","Female"], type: ["Grass","Poison"], weakness: ["Fire","Psychic","Flying","Ice"], evolution: [""], avatar: "venusaur", color: "48D0B0", green: 0.82,red: 0.28,blue: 0.69, detailGreen: 0.95, detailRed: 0.85, detailBlue: 0.91)
        
        let pokemon4 = pokemon(name: "Charmander", number: 004, info: "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.", heigth: 0.6, weigth: 8.5, category: "Lizard", habilities: "Blaze", gender: ["Male","Female"], type: ["Fire"], weakness: ["Water","Ground","Rock"], evolution: ["Charmeleon","Charizard"], avatar: "charmander", color: "48D0B0", green: 0.42,red: 0.98,blue: 0.42, detailGreen: 0.89, detailRed: 0.99, detailBlue: 0.89)
        
        let pokemon5 = pokemon(name: "Charmeleon", number: 005, info: "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.", heigth: 1.1, weigth: 19.0, category: "Flame", habilities: "Blaze", gender: ["Male","Female"], type: ["Fire"], weakness: ["Water","Ground","Rock"], evolution: ["Charizard"], avatar: "charmeleon", color: "48D0B0", green: 0.42,red: 0.98,blue: 0.42, detailGreen: 0.89, detailRed: 0.99, detailBlue: 0.89)
        
        let pokemon6 = pokemon(name: "Charizard", number: 006, info: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.", heigth: 1.7, weigth: 90.5, category: "Flame", habilities: "Blaze", gender: ["Male","Female"], type: ["Fire"], weakness: ["Water","Ground","Rock"], evolution: [""], avatar: "charizard", color: "48D0B0", green: 0.42,red: 0.98,blue: 0.42, detailGreen: 0.89, detailRed: 0.99, detailBlue: 0.89)
        
        let pokemon7 = pokemon(name: "Squirtle", number: 007, info: "When it retracts its long neck into its shell, it squirts out water with vigorous force.", heigth: 0.5, weigth: 9.0, category: "Tiny Turtle", habilities: "Torrent", gender: ["Male","Female"], type: ["Water"], weakness: ["Grass","Eletric"], evolution: ["Wartotle", "Blastoise"], avatar: "squirtle", color: "48D0B0", green: 0.67,red: 0.35,blue: 0.96, detailGreen: 0.71, detailRed: 0.44, detailBlue: 0.95)
        
        let pokemon8 = pokemon(name: "Wartortle", number: 008, info: "It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.", heigth: 1.0, weigth:22.5, category: "Turtle", habilities: "Torrent", gender: ["Male","Female"], type: ["Water"], weakness: ["Grass","Eletric"], evolution: ["Blastoise"], avatar: "wartortle", color: "48D0B0", green: 0.67,red: 0.35,blue: 0.96, detailGreen: 0.71, detailRed: 0.44, detailBlue: 0.95)
        
        let pokemon9 = pokemon(name: "Blastoise", number: 009, info: "It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.", heigth: 1.6, weigth:85.5, category: "Shellfish", habilities: "Torrent", gender: ["Male","Female"], type: ["Water"], weakness: ["Grass","Eletric"], evolution: [""], avatar: "blastoise", color: "48D0B0", green: 0.67,red: 0.35,blue: 0.96, detailGreen: 0.71, detailRed: 0.44, detailBlue: 0.95)
        
        let pokemon25 = pokemon(name: "Pikachu", number: 025, info: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", heigth: 0.4, weigth:6.0, category: "Mouse", habilities: "Static", gender: ["Male","Female"], type: ["Electric"], weakness: ["Ground"], evolution: ["Raichu"], avatar: "pikachu", color: "48D0B0", green: 0.81,red: 0.88,blue: 0.29, detailGreen: 0.87, detailRed: 0.88, detailBlue: 0.53)
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.myTableView.tableFooterView = UIView()
        
        self.arrayPokemon = [pokemon1,pokemon2,pokemon3,pokemon4,pokemon5,pokemon6,pokemon7,pokemon8,pokemon9,pokemon25]
        
    }


}

//MARK: - UItableViewDelegate , UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPokemon.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        cell?.setup(value: self.arrayPokemon[indexPath.row])
        
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemonSelected: pokemon = self.arrayPokemon[indexPath.row]
        
        performSegue(withIdentifier: "DetailViewController", sender: pokemonSelected)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailViewController? = segue.destination as? DetailViewController
        vc?.pokemonSelected = sender as? pokemon

    }
    
}
