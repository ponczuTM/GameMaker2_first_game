if (mode != TRANS_MODE.OFF) {
    var half_h = percent * h;
    
    if (half_h > 0) { // Warunek pozostaje taki sam
        draw_set_color(c_black);
        draw_rectangle(0, 0, w, h - half_h, false); // Modyfikujemy pozycję i wysokość prostokąta
    }
}