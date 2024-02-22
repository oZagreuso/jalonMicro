<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use App\Repository\MicroprocesseurRepository;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Patch;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: MicroprocesseurRepository::class)]
#[ApiResource(
    operations: [
    new Get(),
    new GetCollection(),
    new Post(),
    new Patch()
    ]
)]
class Microprocesseur
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 120)]
    private ?string $marque = null;

    #[ORM\Column(length: 120)]
    private ?string $nomFamille = null;

    #[ORM\Column(length: 120)]
    private ?string $nomModele = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 5, scale: 1)]
    private ?string $frequenceGhz = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 5, scale: 0)]
    private ?string $prix = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMarque(): ?string
    {
        return $this->marque;
    }

    public function setMarque(string $marque): static
    {
        $this->marque = $marque;

        return $this;
    }

    public function getNomFamille(): ?string
    {
        return $this->nomFamille;
    }

    public function setNomFamille(string $nomFamille): static
    {
        $this->nomFamille = $nomFamille;

        return $this;
    }

    public function getNomModele(): ?string
    {
        return $this->nomModele;
    }

    public function setNomModele(string $nomModele): static
    {
        $this->nomModele = $nomModele;

        return $this;
    }

    public function getFrequenceGhz(): ?string
    {
        return $this->frequenceGhz;
    }

    public function setFrequenceGhz(string $frequenceGhz): static
    {
        $this->frequenceGhz = $frequenceGhz;

        return $this;
    }

    public function getPrix(): ?string
    {
        return $this->prix;
    }

    public function setPrix(string $prix): static
    {
        $this->prix = $prix;

        return $this;
    }

    public function getStock(): ?int
    {
        return $this->stock;
    }

    public function setStock(?int $stock): static
    {
        $this->stock = $stock;

        return $this;
    }
}
