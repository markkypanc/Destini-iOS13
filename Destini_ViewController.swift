import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func ChoiceButton(_ sender: UIButton) {
        let decision: String = sender.currentTitle!
        storyBrain.nextStory(button: decision)
        updateUI()
    }
    
    func updateUI() {
        let text = storyBrain.getText()
        let textChoice1 = storyBrain.getTextChoice1()
        let textChoice2 = storyBrain.getTextChoice2()
        
        storyLabel.text = text
        choice1Button.setTitle(textChoice1, for: .normal)
        choice2Button.setTitle(textChoice2, for: .normal)
    }
}


