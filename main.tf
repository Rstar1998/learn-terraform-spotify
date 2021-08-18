terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.5"
      source  = "conradludgate/spotify"
    }
  }
}


provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "Terraform Summer Playlist by [Ross🙂]"
  description = "This playlist was created by Terraform but scripted by Ross🙂"
  public      = true

  tracks = [
    data.spotify_search_track.A.tracks[0].id,
    data.spotify_search_track.K.tracks[0].id,
    data.spotify_search_track.D.tracks[0].id,
    data.spotify_track.E.id,
    data.spotify_search_track.F.tracks[0].id,
    data.spotify_search_track.G.tracks[0].id,
    data.spotify_track.H.id,
    data.spotify_search_track.I.tracks[0].id,
    data.spotify_search_track.J.tracks[0].id,
    data.spotify_search_track.L.tracks[0].id,
    data.spotify_search_track.M.tracks[0].id,
    data.spotify_search_track.N.tracks[0].id,
    data.spotify_search_track.B.tracks[0].id,
    data.spotify_search_track.C.tracks[0].id,
  ]
}

data "spotify_search_track" "A" {
  artist = "The Score"
  album = "ATLAS"
  name  = "Unstoppable"
}

data "spotify_search_track" "B" {
  artist = "Remady & Manu-L"
  album = "Single Ladies"
  name  = "Single Ladies - Single Edit"
}

data "spotify_search_track" "C" {
  artist = "Shakira"
  album = "Laundry Service"
  name  = "Whenever, Wherever"
}

data "spotify_search_track" "D" {
  album = "23"
  name  = "23"
}

data "spotify_track" "E" {
  url = "https://open.spotify.com/track/69Sy7207dnixZ6w7RSV9Kb?si=62719da053d24fc5"
}


data "spotify_search_track" "F" {

  album = "Tonight is the night"
  name  = "Tonight is the night"
}

data "spotify_search_track" "G" {

  album = "Blurryface"
  name  = "Stressed Out"
}

data "spotify_track" "H" {
  url = "https://open.spotify.com/track/1rg9i5UE2qefjows4qWlOl?si=68da088d55ba4dfe"
}


data "spotify_search_track" "I" {

  album = "Love the Show"
  name  = "Dilemma - Radio Edit"
}

data "spotify_search_track" "J" {
  artist = "Francesco Gabbani"
  album = "Viceversa"
  name  = "Viceversa"
}

data "spotify_search_track" "K" {

  artist = "Dan Balan"
  name  = "Lendo - Calendo"
}

data "spotify_search_track" "L" {

  album = "One Love"
  name  = "One Love"
}

data "spotify_search_track" "M" {

  artist = "Darude"
  name  = "Sandstorm"
}

data "spotify_search_track" "N" {

  album = "Bring that Fire"
  name  = "Bring that Fire"
}
