import { BrowserRouter, Route, Routes } from "react-router-dom";
import { Home } from "./pages/Home";
import { Jogadores } from "./pages/Jogadores";
import { Jogatinas } from "./pages/Jogatinas";
import { Partidas } from "./pages/Partidas";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route>
          <Route path="/" element={<Home />} />
          <Route path="/jogadores" element={<Jogadores />} />
          <Route path="/jogatinas" element={<Jogatinas />} />
          <Route path="/partidas" element={<Partidas />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
