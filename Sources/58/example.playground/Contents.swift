import UIKit

extension UICollectionView {
    
    func flexibleCellWidth(minCellWidth: CGFloat, minimumInteritemSpacing: CGFloat) -> CGFloat {
        let contentWidth = frame.size.width - contentInset.left - contentInset.right
        let numberOfItemsInRow = Int((contentWidth + minimumInteritemSpacing) / (minCellWidth + minimumInteritemSpacing))
        let spacesWidth = CGFloat(numberOfItemsInRow - 1) * minimumInteritemSpacing
        let availableContentWidth = contentWidth - spacesWidth
        return availableContentWidth / CGFloat(numberOfItemsInRow)
    }
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellWidth = collectionView.flexibleCellWidth(minCellWidth: 72, minimumInteritemSpacing: 10)
    return CGSize(width: cellWidth, height: cellWidth)
}
