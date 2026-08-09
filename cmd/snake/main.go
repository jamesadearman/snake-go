package main

import (
	"log"

	"github.com/hajimehoshi/ebiten/v2"
)

const (
	windowWidth  = 640
	windowHeight = 480
)

type App struct{}

func (a *App) Update() error {
	return nil
}

func (a *App) Draw(screen *ebiten.Image) {
}

func (a *App) Layout(outsideWidth, outsideHeight int) (screenWidth, screenHeight int) {
	return windowWidth, windowHeight
}

func main() {
	ebiten.SetWindowSize(windowWidth, windowHeight)
	ebiten.SetWindowTitle("Snake")

	if err := ebiten.RunGame(&App{}); err != nil {
		log.Fatal(err)
	}
}
