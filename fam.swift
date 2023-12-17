final class AppStore: ObservableObject {
    
    @Published private(set) var state: AppState
    
    private var reducer: AppReducerProtocol
    
    private var backgroundRemoval: BackgroundRemovalProtocol
    
    init(initial: AppState,
         reducer: AppReducerProtocol,
         backgroundRemoval: BackgroundRemovalProtocol) {
        
        self.state = initial
        self.reducer = reducer
        self.backgroundRemoval = backgroundRemoval
    }
    
